import 'package:app_gestion_camaroneras/app/ui/views/menu_options/menu_options_controller.dart';
import 'package:get/get.dart';

class MenuOptionsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuOptionsController());
  }
}
