import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Resources/app_colors.dart';
import '../../../Resources/app_theme.dart';

class HoverController extends GetxController {
  var isHovered = false.obs;
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final double horizontalPadding;
  final double verticalPadding;

  CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 25.0,
    this.horizontalPadding = 20.0,
    this.verticalPadding = 10.0,
  }) : super(key: key);

  final HoverController hoverController = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => hoverController.isHovered.value = true,
      onExit: (_) => hoverController.isHovered.value = false,
      child: Obx(() {
        return InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: hoverController.isHovered.value
                  ? (backgroundColor ?? AppColors.primaryColor).withOpacity(0.9)
                  : backgroundColor ?? AppColors.primaryColor,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                if (hoverController.isHovered.value)
                  BoxShadow(
                    color: (backgroundColor ?? AppColors.primaryColor)
                        .withOpacity(0.4),
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: const Offset(0, 6),
                  ),
              ],
            ),
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Text(
              text,
              style: appTheme.textTheme.bodyMedium?.copyWith(
                color: textColor ?? AppColors.primaryBackground,
              ),
            ),
          ),
        );
      }),
    );
  }
}
