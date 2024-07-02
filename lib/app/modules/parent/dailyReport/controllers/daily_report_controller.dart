import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/getActivitiesModel.dart';

import '../../../../repositories/parentRepository.dart';

class DailyReportController extends GetxController {
  ParentRepository parentRepository = ParentRepository();

  List<GetActivitiesModel> getActivitiesModel = <GetActivitiesModel>[].obs;

  Future<List<GetActivitiesModel>> getactivites() async {
    getActivitiesModel = await parentRepository.fetchActivities();
    return getActivitiesModel;
  }
}
