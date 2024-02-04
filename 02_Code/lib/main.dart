import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medespro/views/content/content.dart';

void main() {
  runApp(const MedesproApp());
}

class MedesproApp extends StatelessWidget {
  const MedesproApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = GoogleFonts.montserratTextTheme(
      Theme.of(context).textTheme,
    );

    return MaterialApp(
      title: 'medespro',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFF5E67AF),
        scaffoldBackgroundColor: Colors.white,
        bottomSheetTheme: const BottomSheetThemeData(
            surfaceTintColor: Colors.white,
            modalBackgroundColor: Colors.white,
            backgroundColor: Colors.white),
        textTheme: textTheme,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const ContentView(),
    );
  }
}
