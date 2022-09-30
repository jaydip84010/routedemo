import 'dart:js';
import 'firstpage.dart';
import 'secondpage.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => FirstPage(),
      '/second': (context) => SecondPage(),
      '/home': (context) => RouteDemo()
    },
    initialRoute: '/',
    theme: ThemeData.from(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Colors.black12,
            onPrimary: Colors.white,
            secondary: Colors.white24,
            onSecondary: Colors.white60,
            error: Colors.red,
            onError: Colors.redAccent,
            background: Colors.white24,
            onBackground: Colors.white,
            surface: Colors.white30,
            onSurface: Colors.black))));

class RouteDemo extends StatefulWidget {
  const RouteDemo({Key? key}) : super(key: key);

  @override
  State<RouteDemo> createState() => _RouteDemoState();
}

class _RouteDemoState extends State<RouteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
      )),
    );
  }
}
