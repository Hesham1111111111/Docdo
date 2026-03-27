import 'package:advanced/core/helpers/exetions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/routing/rouets.dart';
import '../../../../../../../core/theming/app_stayle.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../../../core/widgets/custom_bottom.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  late bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(hintText: "Email", obscureText: false),
          vSpace(20),
          CustomTextFormField(
            hintText: "Password",
            obscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          vSpace(9),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Forgot Password?',
              style: AppStyle.text12PrimaryRegular,
            ),
          ),
          vSpace(24),
          CustomButton(
            text: "Login",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.pushNamed(Routes.homeScreen);
              }
            },
          ),
        ],
      ),
    );
  }
}
