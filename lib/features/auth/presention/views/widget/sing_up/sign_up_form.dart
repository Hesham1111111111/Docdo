import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/helpers/validation/app_validator.dart';
import 'package:advanced/features/auth/presention/manager/auth_state.dart';
import 'package:advanced/features/auth/presention/manager/sign_up/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../../core/widgets/custom_bottom.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          vSpace(15),
          CustomTextFormField(
            validator: (value) =>
                AppValidator.validateEmptyField(context, value),
            controller: cubit.nameController,
            title: "Name",
            hintText: "Enter your Name",
            keyboardType: TextInputType.name,
          ),
          CustomTextFormField(
            validator: (value) => AppValidator.validateEmail(context, value),
            controller: cubit.emailController,
            title: "Email",
            hintText: "Enter your email",
            suffixIcon: const Icon(Icons.email_outlined),
            keyboardType: TextInputType.emailAddress,
          ),

          BlocBuilder<SignUpCubit, AuthState>(
            buildWhen: (prev, curr) =>
                prev.isPasswordVisible != curr.isPasswordVisible,
            builder: (context, state) {
              return CustomTextFormField(
                validator: (value) =>
                    AppValidator.validateEmptyField(context, value),
                controller: cubit.passwordController,
                title: "Password",
                hintText: "Password",
                obscureText: !state.isPasswordVisible,
                suffixIcon: InkWell(
                  onTap: () {
                    context.read<SignUpCubit>().togglePasswordVisibility();
                  },
                  child: Icon(
                    state.isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              );
            },
          ),

          BlocBuilder<SignUpCubit, AuthState>(
            buildWhen: (prev, curr) =>
                prev.isConfirmPasswordVisible != curr.isConfirmPasswordVisible,
            builder: (context, state) {
              return CustomTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppValidator.validateEmptyField(context, value);
                  }
                  if (value != cubit.passwordController.text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
                controller: cubit.confirmPasswordController,
                title: "Confirm Password",
                hintText: "Confirm Password",
                obscureText: !state.isConfirmPasswordVisible,
                suffixIcon: InkWell(
                  onTap: () {
                    context
                        .read<SignUpCubit>()
                        .toggleConfirmPasswordVisibility();
                  },
                  child: Icon(
                    state.isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              );
            },
          ),

          CustomTextFormField(
            validator: (value) =>
                AppValidator.validateEmptyField(context, value),
            controller: cubit.phoneController,
            hintText: "Your phone number",
            keyboardType: TextInputType.phone,
            title: "Phone",
          ),

          vSpace(32),

          CustomButton(
            text: "Create Account",
            onPressed: () {
              if (cubit.formKey.currentState!.validate()) {
                cubit.signUp();
              }
            },
          ),
        ],
      ),
    );
  }
}
