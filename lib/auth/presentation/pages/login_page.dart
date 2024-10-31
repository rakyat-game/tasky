import 'package:flutter/material.dart';
import 'package:tasky/auth/presentation/widgets/auth_widgets.dart';

import 'package:tasky/utils/utils.dart';

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
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: PhoneInput(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: PasswordInput(
                  controller: passwordController,
                  inputType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    width: double.infinity,
                    child: SignButton(text: "Sign in", onTap: () {})),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t have any account?",
                    style: FontStyles.secondaryTextStyle,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up here",
                        style: FontStyles.textButtonStyle,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
