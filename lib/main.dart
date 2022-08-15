import 'package:flutter/material.dart';
import '../pages/metodo_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Lab',
        theme: ThemeData(primarySwatch: Colors.orange),
        home: MetodoOverviewPage(),
        debugShowCheckedModeBanner: false);
  }
}
