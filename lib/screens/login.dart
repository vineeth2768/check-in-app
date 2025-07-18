import 'package:check_in_app/routes/route_name.dart';
import 'package:check_in_app/utils/app_colors.dart';
import 'package:check_in_app/widgets/custom_button.dart';
import 'package:check_in_app/widgets/custom_otp_fields.dart';
import 'package:check_in_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  bool _rememberMe = false;

  @override
  void dispose() {
    phoneController.dispose();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32.0),
              Center(child: Text('Login', style: textTheme.displaySmall)),
              const SizedBox(height: 8.0),
              Center(
                child: Text(
                  'Welcome back to your account',
                  style: textTheme.headlineSmall,
                ),
              ),
              const SizedBox(height: 48.0),
              Text('Phone number', style: textTheme.titleSmall),
              const SizedBox(height: 5.0),
              CustomTextfield(controller: phoneController, hintText: ""),
              const SizedBox(height: 24.0),
              Text('PassCode', style: textTheme.titleSmall),
              const SizedBox(height: 5.0),
              CustomOtpField(onSubmit: (code) {}),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _rememberMe = newValue!;
                          });
                        },
                      ),
                      Text('Remember me', style: textTheme.labelSmall),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.accentOrange,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Forgot Passcode?',
                        style: textTheme.labelSmall?.copyWith(
                          color: AppColors.accentOrange,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48.0),
              CustomButton(
                ontap: () {
                  context.pushNamed(AppRouteName.landingName);
                },
                labal: "Login",
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have account?', style: textTheme.bodySmall),
                  TextButton(
                    onPressed: () {},
                    child: Text('Register', style: textTheme.labelMedium),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
