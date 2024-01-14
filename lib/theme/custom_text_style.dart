import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBaloo2 => theme.textTheme.bodySmall!.baloo2.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 9.fSize,
      );
  static get bodySmallBluegray40011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallff638ea5 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF638EA5),
        fontSize: 11.fSize,
      );
  // Headline style
  static get headlineSmallBaloo2 => theme.textTheme.headlineSmall!.baloo2;
  static get headlineSmallBaloo2Gray900 =>
      theme.textTheme.headlineSmall!.baloo2.copyWith(
        color: appTheme.gray900,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeBluegray400Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterBluegray400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get labelLargeInterBluegray400Medium =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBluegray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumInter => theme.textTheme.labelMedium!.inter;
  static get labelMediumInterBluegray400 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelMediumff1e1c1d => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF1E1C1D),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumff638ea5 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF638EA5),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title style
  static get titleLargeBaloo2 => theme.textTheme.titleLarge!.baloo2;
  static get titleLargeBaloo2Bluegray400 =>
      theme.textTheme.titleLarge!.baloo2.copyWith(
        color: appTheme.blueGray400,
        fontSize: 23.fSize,
      );
  static get titleLargeBaloo2Gray900 =>
      theme.textTheme.titleLarge!.baloo2.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeBaloo2Gray90023 =>
      theme.textTheme.titleLarge!.baloo2.copyWith(
        color: appTheme.gray900,
        fontSize: 23.fSize,
      );
  static get titleLargeBaloo2Red900 =>
      theme.textTheme.titleLarge!.baloo2.copyWith(
        color: appTheme.red900,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleSmallInterBluegray400 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray400,
      );
}

extension on TextStyle {
  TextStyle get baloo2 {
    return copyWith(
      fontFamily: 'Baloo 2',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
