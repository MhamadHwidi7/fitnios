import 'package:flutter/widgets.dart';

class AppFonts {
  static const double xxxSmallFontSize = 8.0;
  static const double xxSmallFontSize = 10.0;
  static const double xSmallFontSize = 12.0;
  static const double smallFontSize = 14.0;
  static const double mediumFontSize = 16.0;
  static const double normalFontSize = 18.0;
  static const double largeFontSize = 20.0;
  static const double xLargeFontSize = 22.0;
  static const double xxLargeFontSize = 24.0;
  static const double xxxLargeFontSize = 26.0;
  static const double xxxxLargeFontSize = 48.0;

  static String getFontFamily(String langCode) {
    if (langCode == 'ar') {
      return 'Poppins';
    }

    return 'Poppins';
  }

  static double _getScale(context, bool withScreenMeasurement) {
    double scale = 1;
    Size screenSize = MediaQuery.of(context).size;

    if (withScreenMeasurement) {
      if (screenSize.width <= 320) {
        // iPhone 4 & 5 (480 - 568)
        scale = 0.65;
      } else {
        scale = 0.85;
      }
    }

    return scale;
  }

  static double getXXSmallFontSize(context,
      {bool withScreenMeasurement = true}) {
    return xxSmallFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getXSmallFontSize(context,
      {bool withScreenMeasurement = true}) {
    return xSmallFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getSmallFontSize(context, {bool withScreenMeasurement = true}) {
    return smallFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getMediumFontSize(context,
      {bool withScreenMeasurement = true}) {
    return mediumFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getNormalFontSize(context,
      {bool withScreenMeasurement = true}) {
    return normalFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getLargeFontSize(context, {bool withScreenMeasurement = true}) {
    return largeFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getXLargeFontSize(context,
      {bool withScreenMeasurement = true}) {
    return xLargeFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getXXLargeFontSize(context,
      {bool withScreenMeasurement = true}) {
    return xxLargeFontSize * _getScale(context, withScreenMeasurement);
  }

  static double getXXXLargeFontSize(context,
      {bool withScreenMeasurement = true}) {
    return xxxLargeFontSize * _getScale(context, withScreenMeasurement);
  }
}
