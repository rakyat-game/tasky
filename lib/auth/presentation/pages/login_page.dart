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
                    child: SignButton(text: Strings.signin, onTap: () {
                      //TODO: Implement the sign in function
                    })),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.haveAcc,
                    style: FontStyles.secondaryTextStyle,
                  ),
                  TextButton(
                      onPressed: () {
                        // TODO: Implement the navigation to register
                      },
                      child: Text(
                        Strings.signHere,
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
