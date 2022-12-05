import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/list_tickets.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/tickets.dart';
import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(
      builder: (controller) => CustomScaffoldBase(
        elevation: 0.0,
        action: Container(
          //margin: EdgeInsets.only(right: 5.w),
          child: const Padding(
            padding: EdgeInsets.only(right: 320.0),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizeBox: SizedBox(height: 40.0),
        body: const ListTickets(),
        floatingActionButton: Container(
          height: 50.h,
          width: 170.w,
          decoration: BoxDecoration(
            color: AppColors.kBase,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Helpers.pathAssetIcons("ico_ticket.svg"),
                ),
                SizedBox(width: 10.w),
                Text(
                  "Crear Tickets",
                  style: AppTextTheme(context).bodyMedium(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
