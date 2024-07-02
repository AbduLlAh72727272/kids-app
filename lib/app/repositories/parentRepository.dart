import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kidslearning/app/data/getmodels/getActivitiesModel.dart';
import 'package:kidslearning/app/data/getmodels/getFeeModel.dart';
import 'package:kidslearning/app/data/getmodels/getFilesModel.dart';
import 'package:kidslearning/app/resources/apiKeys.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class ParentRepository {
  //fetch activities for parent side
  Future<List<GetActivitiesModel>> fetchActivities() async {
    try {
      final response = await http.get(
        Uri.parse(getActivitiesUrl),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzE5ODYxNTEyLCJleHAiOjE3MjI0NTM1MTJ9.QpDo1YOpO1lJWDH5JZVaMgFQANos03-O_5z9w7Q3khE',
        },
      );

      if (response.statusCode == 200) {
        // Process the response body if needed

        List<GetActivitiesModel> activities =
            getActivitiesModelFromJson(response.body);

        return activities;
      } else {
        print('Failed to load activities: ${response.statusCode}');
        throw Exception();
      }
    } catch (e) {
      print('Error: $e');
      throw Exception();
    }
  }

  //get fee slips
  Future<List<GetFeeModel>> fetchFeeSlips() async {
    try {
      final response = await http.get(
        Uri.parse(getFeeUrl),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzE5ODYxNTEyLCJleHAiOjE3MjI0NTM1MTJ9.QpDo1YOpO1lJWDH5JZVaMgFQANos03-O_5z9w7Q3khE',
        },
      );

      if (response.statusCode == 200) {
        // Process the response body if needed

        List<GetFeeModel> feeslips = getFeeModelFromJson(response.body);

        return feeslips;
      } else {
        print('Failed to load activities: ${response.statusCode}');
        throw Exception();
      }
    } catch (e) {
      print('Error: $e');
      throw Exception();
    }
  }

  //get files
  Future<List<GetFilesModel>> fetchFiles() async {
    try {
      final response = await http.get(
        Uri.parse(getFilesUrl),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNzE5OTQ5MTYzLCJleHAiOjE3MjI1NDExNjN9.fMcFHDHDAFlQTneJz_MOrKnEeGHY-WjViYOvO7Fz-nU',
        },
      );

      if (response.statusCode == 200) {
        // Process the response body if needed

        List<GetFilesModel> feeslips = getFilesModelFromJson(response.body);

        return feeslips;
      } else {
        print('Failed to load activities: ${response.statusCode}');
        throw Exception();
      }
    } catch (e) {
      print('Error: $e');
      throw Exception();
    }
  }

  //downloading the files recieved from the api of files
  // Download and open PDF file
  Future<void> downloadAndOpenPDF(String url, String fileName) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final directory = await getApplicationDocumentsDirectory();
        final file = File('${directory.path}/$fileName.txt');
        await file.writeAsBytes(response.bodyBytes);

        // Convert text file to PDF
        final pdfFile = File('${directory.path}/$fileName.pdf');
        await generatePDF(file.path, pdfFile.path);

        // Show the PDF using flutter_pdfview
        final String pdfPath = pdfFile.path;
        Get.to(() => Scaffold(
              appBar: AppBar(title: Text(fileName),backgroundColor: whitecolor,),
              body: PDFView(
                filePath: pdfPath,
                enableSwipe: true,
                swipeHorizontal: false,
              ),
            ));

  
      } else {
        throw Exception('Failed to download file');
      }
    } catch (e) {
      Get.snackbar('Error', 'Error downloading and opening file: $e');
    }
  }

  // Convert text file to PDF
  Future<void> generatePDF(String inputPath, String outputPath) async {
    try {
      final inputBytes = await File(inputPath).readAsBytes();
      final pdfFile = File(outputPath);
      await pdfFile.writeAsBytes(inputBytes);
    } catch (e) {
      print('Error converting file to PDF: $e');
      throw Exception('Error converting file to PDF');
    }
  }
}
