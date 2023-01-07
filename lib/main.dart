import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planning/utils/route.dart';

void main() {
  runApp(const MyApp());
}

var router = RouteGenerator().router;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 153, 248, 156),
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
