import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeMontserratOnErrorContainer =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargeMontserratOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
      );
  static get bodyMediumMontserratBlack900 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black900.withOpacity(0.75),
      );
  static get bodyMediumMontserratBlack900_1 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumRobotoOnPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.75),
        fontSize: 10.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallMontserrat => theme.textTheme.bodySmall!.montserrat;
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineSmallNeueMontreal =>
      theme.textTheme.headlineSmall!.neueMontreal.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallNeueMontrealOnPrimary =>
      theme.textTheme.headlineSmall!.neueMontreal.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallNeueMontreal_1 =>
      theme.textTheme.headlineSmall!.neueMontreal;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 13.fSize,
      );
  static get labelLargeMontserratBlack900 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMontserrat =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeMontserrat_1 => theme.textTheme.titleLarge!.montserrat;
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto;
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumMontserratPrimary =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumSFProDisplayPrimary =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSFProDisplayBlack900 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
}

extension on TextStyle {
  TextStyle get neueMontreal {
    return copyWith(
      fontFamily: 'Neue Montreal',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
