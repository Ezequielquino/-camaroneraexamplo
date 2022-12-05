import 'package:app_gestion_camaroneras/core/theme/app_colors.dart';
import 'package:app_gestion_camaroneras/core/theme/app_text_theme.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({
    Key? key,
    this.isLoading = false,
    this.text,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;
  final bool isLoading;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadiusMedium.r),
        color: AppColors.kBase,
        boxShadow: [
          BoxShadow(
            color: AppColors.kBase.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 27,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 50.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusMedium.r),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: isLoading
              ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              : Text(
                  "$text",
                  style: AppTextTheme(context).subTitleLargeBold(),
                ),
        ),
      ),
    );
  }
}
