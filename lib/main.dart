import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/providers/provider.dart';
import 'module/screen.dart';

GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ProductProvider()..loadProducts(),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}