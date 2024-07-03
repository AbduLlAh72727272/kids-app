import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/signInReponseModel.dart';
import 'package:kidslearning/app/data/postmodels/createNewPassword.dart';
import 'package:kidslearning/app/data/postmodels/signInModel.dart';
import 'package:http/http.dart' as http;
import 'package:kidslearning/app/resources/apiKeys.dart';
import 'package:kidslearning/app/resources/localStorage.dart';
import 'package:kidslearning/app/routes/app_pages.dart';
import 'package:kidslearning/app/utils/utils.dart';

class AuthRepository {
  //Api for signingIn a user to the application
  Future<void> signInUser(SignInPostModel signInData) async {
    try {
      EasyLoading.show(status: "Please wait...");
      final url = Uri.parse(loginUserUrl);

      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(signInData.toJson()),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        sharedPrefbox.write(userInformation,
            signInResponseModelToJson(SignInResponseModel.fromJson(data)));
        sharedPrefbox.write(userToken, data['token']);
        EasyLoading.dismiss();
       var role= signInResponseModelFromJson(sharedPrefbox.read(userInformation)).user!.role;
       if(role=="parent"){
        Get.offAllNamed(Routes.HOME);
       }
       else{
        Get.offAllNamed(Routes.NANNY_HOME_PAGE);
       }

      } else {
        EasyLoading.dismiss();
        Utils.snakbar(
            title: "Failed to authenticate user",
            body: "The password or email does not match our record.");
      }
    } catch (e) {
      EasyLoading.dismiss();

      throw Exception(e);
    }
  }

  //send otp to the user email
  Future<void> sendOtp(userEmail) async {
    try {
      EasyLoading.show(status: "Please wait...");
      final url = Uri.parse(sendOtpUrl);

      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode({"email": userEmail}),
      );

      if (response.statusCode == 200) {
        Utils.snakbar(title: "Otp sent", body: "An otp is sent to your email");
        sharedPrefbox.write(email, userEmail);
        Get.toNamed(Routes.VERIFICATION_CODE);
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        Utils.snakbar(
            title: "Failed to sent otp!", body: "Please, enter correct email.");
      }
    } catch (e) {
      EasyLoading.dismiss();
      throw Exception(e);
    }
  }

  //Verify Otp
  Future<void> verifyOtp(otp) async {
    try {
      EasyLoading.show(status: "Verifying Otp...");
      final url = Uri.parse(verifyOtpUrl);

      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode({"email": sharedPrefbox.read(email), "otp": otp}),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        sharedPrefbox.write(verificationToken, data['token']);
        Get.offAllNamed(Routes.AUTHENTICATION_SUCCESS);
        EasyLoading.dismiss();
      } else {
        print(response.body);
        EasyLoading.dismiss();

        Utils.snakbar(
            title: "Failed to verify otp!",
            body: "You have entered incorrect otp.");
      }
    } catch (e) {
      EasyLoading.dismiss();
      throw Exception(e);
    }
  }

  //create new password becuase the user forget the password
  Future<void> createNewPassword(
      CreateNewPasswordModel createNewPasswordModel) async {

        print(createNewPasswordModel.email);
        print(createNewPasswordModel.password);
        print(createNewPasswordModel.cPassword);
    try {
      EasyLoading.show(status: "Please wait...");
      final url = Uri.parse(createNewPasswordUrl);
    

      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': "Bearer ${sharedPrefbox.read(verificationToken)}"
        },
        body: jsonEncode(createNewPasswordModel.toJson()),
      );

      if (response.statusCode == 200) {
        Utils.snakbar(
            title: "Password changed successfully!",
            body: "Your password is changed successfully.");
        Get.offAllNamed(Routes.SIGNIN);
        EasyLoading.dismiss();
      } else {
        print(response.body);
        EasyLoading.dismiss();
      }
    } catch (e) {
      EasyLoading.dismiss();
      throw Exception(e);
    }
  }
}
