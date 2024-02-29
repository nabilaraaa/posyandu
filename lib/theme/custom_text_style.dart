import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 17.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack9000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack9000114_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 8.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPink20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink20001,
        fontSize: 10.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  // Headline text style
  static get headlineMediumOnPrimaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineMediumffadddff => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFFADDDFF),
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallLexendExaffaedeff =>
      theme.textTheme.headlineSmall!.lexendExa.copyWith(
        color: Color(0XFFAEDEFF),
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallLexendExaffffc4df =>
      theme.textTheme.headlineSmall!.lexendExa.copyWith(
        color: Color(0XFFFFC4DF),
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnPrimary_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallff000000 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF000000),
      );
  // Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLexendExaBlack90001 =>
      theme.textTheme.labelLarge!.lexendExa.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLexendExaGreen800 =>
      theme.textTheme.labelLarge!.lexendExa.copyWith(
        color: appTheme.green800,
        fontSize: 12.fSize,
      );
  static get labelLargeLexendExaRed100 =>
      theme.textTheme.labelLarge!.lexendExa.copyWith(
        color: appTheme.red100,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w900,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get labelMediumPoppinsPink20001 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.pink20001,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeRed100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red100,
        fontSize: 22.fSize,
      );
  static get titleLargeffffc4df => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFC4DF),
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleMediumLexendExaRed100 =>
      theme.textTheme.titleMedium!.lexendExa.copyWith(
        color: appTheme.red100,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumYuGothicUIBlack900 =>
      theme.textTheme.titleMedium!.yuGothicUI.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallYuGothicUI => theme.textTheme.titleSmall!.yuGothicUI;
}

extension on TextStyle {
  TextStyle get lexendExa {
    return copyWith(
      fontFamily: 'Lexend Exa',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get yuGothicUI {
    return copyWith(
      fontFamily: 'Yu Gothic UI',
    );
  }
}
