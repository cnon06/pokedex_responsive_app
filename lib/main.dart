import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412,732),
      builder: ((context, child) => 
      MaterialApp(
        theme: ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomePage(),
      )
    ));
  }
}