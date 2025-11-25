import 'package:flutter/material.dart';
import 'Currency.dart';
import 'package:go_router/go_router.dart';
import 'Home.dart';
import 'Length.dart';
import 'Time.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Home()),
      GoRoute(path: '/page1', builder: (context, state) => Currency()),
      GoRoute(path: '/page2', builder: (context, state) => Length()),
      GoRoute(path: '/page3', builder: (context, state) => Time()),


    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Unit Converter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}
