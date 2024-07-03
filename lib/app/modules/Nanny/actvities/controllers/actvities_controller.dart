import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidslearning/app/resources/colors.dart';

class ActvitiesController extends GetxController {
  Rx<DateTime> selectedDate = Rx<DateTime>(DateTime.now());

  final dateController = TextEditingController().obs;
  void selectDate(DateTime date) {
    dateController.value.text = date.toString().split(' ')[0];
  }

  final checkinController=TextEditingController().obs;
  final checkoutController=TextEditingController().obs;

  void setCheckinTime(TimeOfDay time) {
    checkinController.value.text = "${time.hour.toString()}:""${time.minute.toString()} ${time.period.name}";
  }
  void setCheckoutTime(TimeOfDay time) {
    checkoutController.value.text = "${time.hour.toString()}:""${time.minute.toString()} ${time.period.name}";
  }

  var selectedTime = TimeOfDay.now().obs;
 var activities = <Activity>[].obs;
  var subactivities = <String>[].obs;
  var activityName = ''.obs;

  void addActivity() {
    if (activityName.isNotEmpty && subactivities.isNotEmpty) {
      activities.add(Activity(name: activityName.value, subactivities: List.from(subactivities)));
      activityName.value = '';
      subactivities.clear();
    }
  }

  void addSubactivity(String subactivity) {
    if (subactivity.isNotEmpty) {
      subactivities.add(subactivity);
    }
  }

    final TextEditingController activityNameController = TextEditingController();
  final TextEditingController subactivityController = TextEditingController();
   void showAddCardDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Card',style: TextStyle(color: blackcolor),),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: blackcolor),
                  controller: activityNameController,
                  decoration: InputDecoration(labelText: 'Activity Name'),
                  onChanged: (value) {
                    activityName.value = value;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                                style: TextStyle(color: blackcolor),
                        controller: subactivityController,
                        decoration: InputDecoration(labelText: 'Subactivity'),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        addSubactivity(subactivityController.text);
                        subactivityController.clear();
                      },
                    ),
                  ],
                ),
                Obx(
                  () => subactivities.isNotEmpty
                      ? Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: subactivities
                                .map((subactivity) => Text(subactivity,style: TextStyle(color: blackcolor),))
                                .toList(),
                          ),
                        )
                      : SizedBox(),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                addActivity();
                activityNameController.clear();
                subactivityController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
class Activity {
  String name;
  List<String> subactivities;

  Activity({required this.name, required this.subactivities});
}