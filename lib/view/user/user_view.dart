import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapi_with_getx/view/user/user_controller.dart';

class UserView extends StatelessWidget {
  var userController = Get.put(UserController());
  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: userController.userList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ListTile(
                    title: Text(userController.userList[index].name),
                    subtitle: Text(userController.userList[index].email),
                  ),
                ),
              );
            });
      }),
    );
  }
}
