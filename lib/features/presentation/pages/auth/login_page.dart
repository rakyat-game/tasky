import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky/core/core.dart';
import 'package:tasky/features/presentation/manager/user/auth_cubit.dart';
import 'package:tasky/features/presentation/manager/user/auth_states.dart';
import 'package:tasky/features/presentation/widgets/app_widgets.dart';
import 'package:tasky/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(Images.art)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Login",
                style: FontStyles.mainTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: PhoneInput(
                controller: phoneController,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: PasswordInput(
                controller: passwordController,
                inputType: TextInputType
                    .visiblePassword, // Changed to visiblePassword for login
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: SignButton(
                  text: Strings.signin,
                  onTap: () {
                    final phone = phoneController.text;
                    final password = passwordController.text;
                    context
                        .read<UserAuthCubit>()
                        .login(phone: phone, password: password);
                  },
                ),
              ),
            ),
            BlocBuilder<UserAuthCubit, UserState>(
              builder: (BuildContext context, UserState state) {
                if (state is UserLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is UserLoginSuccess) {
                  // Navigate after successful login
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    // Optionally, clear the text fields here if you want
                    phoneController.clear();
                    passwordController.clear();
                    Navigator.of(context).pushNamed(RouteGenerator.home);
                  });
                  return Container(); // Returning an empty container after navigation
                } else if (state is UserError) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      state.message,
                      style: TextStyle(color: AppColors.errorTextColor),
                    ),
                  );
                }
                return Container(); // Default empty container
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.haveAcc,
                  style: FontStyles.secondaryTextStyle,
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(RouteGenerator.register),
                  child: Text(
                    Strings.signHere,
                    style: FontStyles.textButtonStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
