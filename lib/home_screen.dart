import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_getx/notification_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  NotificationController notificationController = Get.put(NotificationController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Notification Switch'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Notifivations'),
              Obx(() => Switch(value: notificationController.notification.value, onChanged: (value){
                notificationController.setNotification(value);

              }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
