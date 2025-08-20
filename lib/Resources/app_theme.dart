import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.primaryBackground, // Background color for screens
  dialogBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColors.primaryColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.professionalGray,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.professionalGray,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.darkGrey,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.darkGrey,
      fontSize: 10,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.lightGrey,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.professionalGray,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.professionalGray,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.professionalGray,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),

    // Define other text styles as needed
  ),
  iconTheme: const IconThemeData(
    color: AppColors.darkGrey,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.lightGrey,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: TextStyle(
      fontFamily: 'Groteskly Yours',
      color: AppColors.red,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.textFieldBorder),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.textFieldBorder),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
      foregroundColor: MaterialStateProperty.all(AppColors.white),
      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontFamily: 'Groteskly Yours',
          fontWeight: FontWeight.w800,
          fontSize: 18,
        ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    ),
  ),
  extensions: const <ThemeExtension<dynamic>>[
    CustomTextStyleExtension(
      boldDarkGreyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: AppColors.darkGrey,
      ),
    ),
  ],
);

@immutable
class CustomTextStyleExtension extends ThemeExtension<CustomTextStyleExtension> {
  final TextStyle? boldDarkGreyLarge;

  const CustomTextStyleExtension({this.boldDarkGreyLarge});

  @override
  CustomTextStyleExtension copyWith({TextStyle? boldDarkGreyLarge}) {
    return CustomTextStyleExtension(
      boldDarkGreyLarge: boldDarkGreyLarge ?? this.boldDarkGreyLarge,
    );
  }

  @override
  CustomTextStyleExtension lerp(ThemeExtension<CustomTextStyleExtension>? other, double t) {
    if (other is! CustomTextStyleExtension) return this;
    return CustomTextStyleExtension(
      boldDarkGreyLarge: TextStyle.lerp(boldDarkGreyLarge, other.boldDarkGreyLarge, t),
    );
  }
}
