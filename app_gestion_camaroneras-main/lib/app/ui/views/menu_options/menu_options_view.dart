import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu_options/menu_options_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu_options/widgets/option_list.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuOptionsView extends StatelessWidget {
  const MenuOptionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuOptionsController>(
      builder: (controller) => CustomScaffoldBase(
        appBarbackgroundColor: AppColors.kBase,
        iconThemeColor: Colors.white,
        drawer: const SizedBox(),
        body: Stack(
          children: const [OptionList()],
        ),
        floatingActionButton: CircleAvatar(),
      ),
    );
  }
}
