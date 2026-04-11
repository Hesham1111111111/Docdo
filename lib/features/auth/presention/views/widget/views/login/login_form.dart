import 'package:advanced/core/helpers/validation/app_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/theming/app_stayle.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../../../core/widgets/custom_bottom.dart';
import '../../../../../data/model/login_request_body.dart';
import '../../../../manager/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isPasswordVisible = false;
  bool isLoading = false;

  late final LoginCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<LoginCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            suffixIcon: const Icon(Icons.email_outlined),
            title: "Email",
            keyboardType: TextInputType.emailAddress,
            controller: cubit.emailController,
            validator: (value) => AppValidator.validateEmail(context, value),
            hintText: "Enter your Email",
            obscureText: false,
          ),

          vSpace(20),

          CustomTextFormField(
            title: "Password",
            keyboardType: TextInputType.visiblePassword,
            controller: cubit.passwordController,
            hintText: " Enter your Password",
            obscureText: !isPasswordVisible,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              child: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            validator: (value) =>
                AppValidator.validateEmptyField(context, value),
          ),

          vSpace(9),

          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: GestureDetector(
              onTap: () {
                // navigate forgot password
              },
              child: Text(
                'Forgot Password?',
                style: AppStyle.text12PrimaryRegular,
              ),
            ),
          ),

          vSpace(24),
          CustomButton(
            text: "Login",
            onPressed: () {
              if (cubit.formKey.currentState!.validate()) {
                cubit.login(
                  LoginRequestBody(
                    email: cubit.emailController.text,
                    password: cubit.passwordController.text,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
