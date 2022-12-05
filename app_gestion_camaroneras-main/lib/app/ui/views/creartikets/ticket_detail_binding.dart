import 'package:app_gestion_camaroneras/app/ui/views/creartikets/ticket_detail_controller.dart';
import 'package:get/get.dart';

class CrearTiketsViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrearTiketsController());
  }
}
