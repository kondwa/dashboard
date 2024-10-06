import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentPage = 0.obs;

  setCurrentPage(index) {
    currentPage.value = index;
  }

  getCurrentPage() {
    return currentPage.value;
  }
}
