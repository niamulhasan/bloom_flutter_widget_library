import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const seed = Color(0xFF1BDE7A);

// const lightColorScheme = ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFF006D36),
//   onPrimary: Color(0xFFFFFFFF),
//   primaryContainer: Color(0xFF5AFF9D),
//   onPrimaryContainer: Color(0xFF00210B),
//   secondary: Color(0xFF4F6352),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFFD3E8D3),
//   onSecondaryContainer: Color(0xFF0D1F12),
//   tertiary: Color(0xFF3A656F),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFFBEEAF5),
//   onTertiaryContainer: Color(0xFF001F26),
//   error: Color(0xFFBA1B1B),
//   errorContainer: Color(0xFFFFDAD4),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410001),
//   background: Color(0xFFFBFDF7),
//   onBackground: Color(0xFF1A1C1A),
//   surface: Color(0xFFFBFDF7),
//   onSurface: Color(0xFF1A1C1A),
//   surfaceVariant: Color(0xFFDDE5DB),
//   onSurfaceVariant: Color(0xFF414941),
//   outline: Color(0xFF727971),
//   onInverseSurface: Color(0xFFF0F1EC),
//   inverseSurface: Color(0xFF2F312E),
//   inversePrimary: Color(0xFF26E37E),
//   shadow: Color(0xFF000000),
// );

// const darkColorScheme = ColorScheme(
//   brightness: Brightness.dark,
//   primary: Color(0xFF26E37E),
//   onPrimary: Color(0xFF003919),
//   primaryContainer: Color(0xFF005226),
//   onPrimaryContainer: Color(0xFF5AFF9D),
//   secondary: Color(0xFFB7CCB8),
//   onSecondary: Color(0xFF223526),
//   secondaryContainer: Color(0xFF394B3C),
//   onSecondaryContainer: Color(0xFFD3E8D3),
//   tertiary: Color(0xFFA2CED9),
//   onTertiary: Color(0xFF02363F),
//   tertiaryContainer: Color(0xFF214D56),
//   onTertiaryContainer: Color(0xFFBEEAF5),
//   error: Color(0xFFFFB4A9),
//   errorContainer: Color(0xFF930006),
//   onError: Color(0xFF680003),
//   onErrorContainer: Color(0xFFFFDAD4),
//   background: Color(0xFF1A1C1A),
//   onBackground: Color(0xFFE2E3DE),
//   surface: Color(0xFF1A1C1A),
//   onSurface: Color(0xFFE2E3DE),
//   surfaceVariant: Color(0xFF414941),
//   onSurfaceVariant: Color(0xFFC1C9BF),
//   outline: Color(0xFF8B938A),
//   onInverseSurface: Color(0xFF1A1C1A),
//   inverseSurface: Color(0xFFE2E3DE),
//   inversePrimary: Color(0xFF006D36),
//   shadow: Color(0xFF000000),
// );
const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF006D31),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF6CFE97),
  onPrimaryContainer: Color(0xFF002109),
  secondary: Color(0xFF5D6300),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE2EA75),
  onSecondaryContainer: Color(0xFF1B1D00),
  tertiary: Color(0xFF835500),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDDAF),
  onTertiaryContainer: Color(0xFF2A1800),
  error: Color(0xFFB3261E),
  errorContainer: Color(0xFFF9DEDC),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410E0B),
  background: Color(0xFFFCFCFC),
  onBackground: Color(0xFF201A1A),
  surface: Color(0xFFFCFCFC),
  onSurface: Color(0xFF201A1A),
  surfaceVariant: Color(0xFFE7E0EC),
  onSurfaceVariant: Color(0xFF49454F),
  outline: Color(0xFF79747E),
  onInverseSurface: Color(0xFFFBEEED),
  inverseSurface: Color(0xFF362F2F),
  inversePrimary: Color(0xFF4CE17E),
  shadow: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF4CE17E),
  onPrimary: Color(0xFF003916),
  primaryContainer: Color(0xFF005323),
  onPrimaryContainer: Color(0xFF6CFE97),
  secondary: Color(0xFFC5CE5B),
  onSecondary: Color(0xFF2E3300),
  secondaryContainer: Color(0xFF454A00),
  onSecondaryContainer: Color(0xFFE2EA75),
  tertiary: Color(0xFFFFB94D),
  onTertiary: Color(0xFF462B00),
  tertiaryContainer: Color(0xFF633F00),
  onTertiaryContainer: Color(0xFFFFDDAF),
  error: Color(0xFFF2B8B5),
  errorContainer: Color(0xFF8C1D18),
  onError: Color(0xFF601410),
  onErrorContainer: Color(0xFFF9DEDC),
  background: Color(0xFF201A1A),
  onBackground: Color(0xFFEDE0DF),
  surface: Color(0xFF201A1A),
  onSurface: Color(0xFFEDE0DF),
  surfaceVariant: Color(0xFF49454F),
  onSurfaceVariant: Color(0xFFCAC4D0),
  outline: Color(0xFF938F99),
  onInverseSurface: Color(0xFF201A1A),
  inverseSurface: Color(0xFFEDE0DF),
  inversePrimary: Color(0xFF006D31),
  shadow: Color(0xFF000000),
);

class MyThemeData {
  MyThemeData._();

  static ThemeData light = ThemeData.light().copyWith(
      colorScheme: lightColorScheme,
      scaffoldBackgroundColor: lightColorScheme.surfaceVariant,
      primaryColor: seed,
      appBarTheme: AppBarTheme().copyWith(
        color: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      textTheme: TextTheme().apply(fontFamily: 'ador')

    // switchTheme: SwitchThemeData(
    //   thumbColor:
    //       MaterialStateProperty.all(lightColorScheme.primary.withOpacity(0.6)),
    //   trackColor:
    //       MaterialStateProperty.all(lightColorScheme.primary.withOpacity(0.4)),
    // ),
  );
  static ThemeData dark = ThemeData.dark().copyWith(
      colorScheme: darkColorScheme,
      appBarTheme: AppBarTheme().copyWith(
        color: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Color(0xff0ff1bd)),
        trackColor:
        MaterialStateProperty.all(darkColorScheme.primary.withOpacity(0.5)),
      ),
      textTheme: TextTheme().apply(fontFamily: 'ador'));
}
