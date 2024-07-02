import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/getFeeModel.dart';
import 'package:kidslearning/app/repositories/parentRepository.dart';

class FeeDetailsController extends GetxController {
  ParentRepository parentRepository = ParentRepository();

  List<GetFeeModel> getfeeSlips = <GetFeeModel>[].obs;
  var isLoading = false.obs;
  Future<void> getFeeSlips() async {
    try {
      isLoading.value = true;
      getfeeSlips = await parentRepository.fetchFeeSlips();

    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFeeSlips();
  }
}
