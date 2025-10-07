import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_shop/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:laza_shop/features/login/ui/widgets/password_requirements.dart';
import '../../../core/themes/colors_manager.dart';
import '../../../core/themes/text_styles.dart';
import '../logic/login_cubit.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome', style: TextStyles.font28W600),
              Text(
                'Please enter your data to continue',
                style: TextStyles.font15W400.copyWith(
                  color: ColorsManager.grey9E,
                ),
              ),
              SizedBox(height: 50.0),
              LoginForm(),
              SizedBox(height: 10,),
Align(
                alignment: Alignment.centerLeft,
    child: PasswordRequirements()),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.font15W400.copyWith(color: Colors.red),
                ),
              ),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        child: GestureDetector(
          onTap: () => validateThenDoLogin(context),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(color: ColorsManager.mainPurple),
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyles.font17W500.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
