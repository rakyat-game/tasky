import 'package:flutter/material.dart';

import 'auth/presentation/widgets/password_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    const inputType = TextInputType.emailAddress;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: PasswordInput(
            controller: controller,
            inputType: inputType,
          ),
        ),
      ),
    );
  }
}
