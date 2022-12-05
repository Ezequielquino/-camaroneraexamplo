import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CamaroneraTicket extends StatelessWidget {
  const CamaroneraTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(
              "  Camaronera 1",
              style: AppTextTheme(context).titleAppBar(
                color: AppColors.kText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 190.0, top: 25.0),
              child: SvgPicture.asset(
                Helpers.pathAssetIcons("ico_nube.svg"),
              ),
            ),
          ]),
          Row(
            children: [
              SizedBox(width: 10.w),
              SvgPicture.asset(
                Helpers.pathAssetIcons("ico_swimming_pool.svg"),
              ),
              SizedBox(width: 5.w),
              Text(
                "Piscina - CID",
                style: AppTextTheme(context).bodyMedium(
                  color: AppColors.kPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
