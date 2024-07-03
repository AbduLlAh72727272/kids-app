import 'dart:convert';

import 'package:kidslearning/app/data/getmodels/getAttendanceModel.dart';
import 'package:http/http.dart' as http;
import 'package:kidslearning/app/data/getmodels/getStudentsModel.dart';
import 'package:kidslearning/app/resources/apiKeys.dart';
import 'package:kidslearning/app/resources/localStorage.dart';

class NanyRepository {
  Future<List<GetAttendanceModel>> fetchAttendance() async {
    try {
      final response = await http.get(
        Uri.parse(getAttendanceUrl),
        headers: {
          'Authorization': 'Bearer ${sharedPrefbox.read(userToken)}',
        },
      );

      if (response.statusCode == 200) {
        // Process the response body if needed

        List<GetAttendanceModel> activities =
            getAttendanceModelFromJson(response.body);

        return activities;
      } else {
        print('Failed to load attendance: ${response.statusCode}');
        throw Exception();
      }
    } catch (e) {
      print('Error: $e');
      throw Exception();
    }
  }

  //fetch all the students

  Future<List<GetStudentsModel>> fetchStudents() async {
    final url = Uri.parse(fetchStudentsUrl);

    try {
      final response = await http.get(url,headers:{  'Authorization': 'Bearer ${sharedPrefbox.read(userToken)}',} );

      if (response.statusCode == 200) {
        List<GetStudentsModel> getStudentsModel =
            getStudentsModelFromJson(response.body);
        return getStudentsModel;
      } else {
        // Request failed with an error status code
        print('Request failed with status: ${response.statusCode}');
        throw Exception();
      }
    } catch (e) {
      // Exception thrown during request
      print('Error fetching data: $e');
      throw Exception();
    }
  }
}
