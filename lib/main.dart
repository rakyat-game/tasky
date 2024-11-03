import 'package:flutter/material.dart';
import 'package:tasky/app/presentation/pages/home_page.dart';
import 'package:tasky/app/presentation/widgets/priority_card.dart';
import 'app/presentation/pages/details_page.dart';
import 'app/presentation/widgets/task_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }


}
