import 'package:flutter/material.dart';
import 'package:flutter_utilities/pages/Home/home.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.notoSansThaiTextTheme()),
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
