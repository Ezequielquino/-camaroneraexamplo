import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/core/utils/popup_messages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    _initialize();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Instance

  //Variable
  RxBool isLoading = RxBool(false);
  RxBool isObscureText = RxBool(true);
  RxString errorTextUser = RxString("");
  RxString errorTextPassword = RxString("");
  RxString existsUserSession = RxString("");

  //TextEditingController
  TextEditingController textCtrlUser = TextEditingController();
  TextEditingController textCtrlPassword = TextEditingController();

  //Function
  void _initialize() async {}

  void showPassword() {
    isObscureText.value = !isObscureText.value;
  }

  void doAuth() async {
    try {
      Get.offNamed(RoutesName.HOME);
      /* bool validateUser =
          existsUserSession.isNotEmpty ? true : textCtrlUser.text.isNotEmpty;
      bool validatePassword = textCtrlPassword.text.isNotEmpty;
      errorTextUser.value = validateUser ? "" : 'Ingrese su usuario';
      errorTextPassword.value = validatePassword ? "" : 'Ingrese su contraseña'; */

    } catch (error) {
      isLoading.value = false;
      PopUpMessages.show(error.toString());
    }
  }
}
