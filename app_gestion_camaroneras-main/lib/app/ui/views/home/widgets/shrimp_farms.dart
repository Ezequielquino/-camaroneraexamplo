import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShrimpFarms extends StatelessWidget {
  const ShrimpFarms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 160.w,
            mainAxisSpacing: 25.w,
            crossAxisSpacing: 25.w,
            childAspectRatio: 1.20.w,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => ItemShrimpFarms(),
            childCount: 40,
          ),
        )
      ],
    );
  }
}

class ItemShrimpFarms extends StatelessWidget {
  const ItemShrimpFarms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kRadiusLarge.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kSecondary.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SvgPicture.asset(
              Helpers.pathAssetIcons("ico_shrimp.svg"),
            ),
          ),
          Text(
            "Camaronera 1",
            style: AppTextTheme(context).bodyMediumBold(
              color: AppColors.kPrimary,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                Helpers.pathAssetIcons("ico_swimming_pool.svg"),
              ),
              SizedBox(width: 10.w),
              Text(
                "2 Piscinas",
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
