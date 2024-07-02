import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kidslearning/app/customeWidgets/appBar.dart';
import 'package:kidslearning/app/resources/alignments.dart';
import 'package:kidslearning/app/resources/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  const FeedbackView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: whitecolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.heightBox,
            appBar("Feedback"),
            40.heightBox,
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image URL
              ),
              title: Text(
                'Admin Feedback',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: crossend,
                children: [
                  Icon(Icons.more_horiz),
                  Text(
                    '11:20am',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Nec integer venenatis ipsum sit. Feugiat suspendisse rhoncus enim orci. Lectus nisl tortor accumsan ornare odio ridiculus. Sed non blandit amet diam. A id vel pellentesque turpis ipsum laoreet ut netus. Sit aliquet mauris sed neque risus integer in. Cras justo in vehicula porttitor. Etiam laoreet vehicula aenean gravida. Vivamus quis semper sit orci ipsum auctor feugiat lorem ultrices. Etiam in et lacus massa tortor. Ridiculus non aenean amet tempus. Lorem et cras gravida nibh. Ac eget gravida tempor tincidunt. Pharetra magna venenatis felis aliquet ac. Blandit volutpat purus sed blandit dui vitae arcu mattis.',
              style: TextStyle(
                color: Colors.black,
                height: 1.5, // Adjust height for better readability
              ),
            ),
          ],
        ),
      ),
    
    );
  }
}
