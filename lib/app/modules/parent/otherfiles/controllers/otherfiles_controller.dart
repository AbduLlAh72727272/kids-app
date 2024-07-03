import 'package:get/get.dart';
import 'package:kidslearning/app/data/getmodels/getFilesModel.dart';
import 'package:kidslearning/app/repositories/parentRepository.dart';

class OtherfilesController extends GetxController {
  final List<String> courses = [
    "Oral and Written skills",
    "Swimming class",
    "Daily Class work",
    "Maths",
    "Learning Spanish",
    "Learn Arabic",
    "Physical Classes report"
  ];

  ParentRepository parentRepository = ParentRepository();

  List<GetFilesModel> getfiles = <GetFilesModel>[].obs;
  var isLoading = false.obs;
  Future<void> getFiles() async {
    try {
      isLoading.value = true;
      getfiles = await parentRepository.fetchFiles();
    } finally {
      isLoading.value = false;
    }
  }

  Future downloadFile(url, filename) async {
    await parentRepository.downloadAndOpenPDF(url, filename);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFiles();
  }
}
