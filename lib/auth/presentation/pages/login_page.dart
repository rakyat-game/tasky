import 'package:flutter/material.dart';
import 'package:tasky/auth/presentation/widgets/auth_widgets.dart';
import 'package:tasky/auth/presentation/widgets/password_input.dart';

import '../../../utils/utils.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Images.art),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Login",
                  style: FontStyles.mainTextStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: PhoneInput(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: PasswordInput(
                  labelText: "Password",
                  controller: passwordController,
                  inputType: TextInputType.emailAddress,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
