import 'package:check_in_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? bgColor;
  final void Function() ontap;
  final double? height;
  final double? width;
  final String? labal;
  final bool? loading;
  final Color? textColor;
  final BorderRadius? borderRadius;

  const CustomButton({
    super.key,
    this.bgColor = AppColors.accentOrange,
    this.height = 45,
    this.width,
    this.labal,
    required this.ontap,
    this.loading,
    this.textColor = AppColors.textLight,
    this.borderRadius, // 👈 New param
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadius effectiveRadius =
        borderRadius ?? BorderRadius.circular(10);

    return Material(
      color: bgColor,
      borderRadius: effectiveRadius,
      child: InkWell(
        onTap: ontap,
        borderRadius: effectiveRadius,
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Text(
              labal ?? "",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
