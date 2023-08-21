import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:templategetx/src/config/routes/routes.dart';
import 'package:templategetx/src/persentation/home/binding/home_binding.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: HomeBindings(), 
        debugShowCheckedModeBanner: false,
        title: dotenv.env['APP_TITLE'] ?? "",
        initialRoute: '/home',
        getPages: appRoutes(),
    );
  }
}

