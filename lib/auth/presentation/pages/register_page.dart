import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../widgets/auth_widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final passwordController = TextEditingController();
    final yearsOfExpController = TextEditingController();
    final addressController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                Images.register,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        Strings.register,
                        style: FontStyles.mainTextStyle,
                      ),
                    ),
                    // name input widget
                    Padding(
                        padding: Constants.inputPadding,
                        child: TextInput(
                            hint: Strings.name,
                            controller: nameController,
                            inputType: TextInputType.name)),
                    // phone input widget
                    const Padding(
                      padding: Constants.inputPadding,
                      child: PhoneInput(),
                    ),
                    // years of exp input widget
                    Padding(
                        padding: Constants.inputPadding,
                        child: TextInput(
                            hint: Strings.yearsOfExp,
                            controller: nameController,
                            inputType: TextInputType.name)),
                    // Level of exp widget
                    const Padding(
                      padding: Constants.inputPadding,
                      child: Dropdown(),
                    ),
                    // address input widget
                    Padding(
                        padding: Constants.inputPadding,
                        child: TextInput(
                            hint: Strings.address,
                            controller: nameController,
                            inputType: TextInputType.name)),
                    // password input widget
                    Padding(
                      padding: Constants.inputPadding,
                      child: PasswordInput(controller: passwordController,
                        inputType: TextInputType.visiblePassword,),
                    ),
                    // Sign up button
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                          width: double.infinity,
                          child:
                          SignButton(text: Strings.signup, onTap: () {})),
                    ),
                    // already have an account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Strings.haveAcc,
                          style: FontStyles.secondaryTextStyle,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              Strings.signin,
                              style: FontStyles.textButtonStyle,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
