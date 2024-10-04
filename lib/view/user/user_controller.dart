import 'package:get/get.dart';
import 'package:restapi_with_getx/model/user_model.dart';
import 'package:restapi_with_getx/service/api_service.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = <UserModel>[].obs;

  fetchUser() async {
    try {
      isLoading(true);
      var userData = await ApiService().fetchUserData();
      userList.addAll(userData);
    } catch (e) {
      print('error in fetching user data $e');
    } finally {
      isLoading(false);
    }
  }
}
