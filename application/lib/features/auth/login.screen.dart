import 'package:app/shared/screens/moon.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../core/const.dart';
import '../../core/extension.dart';
import '../../logic/auth/auth_bloc.dart';
import '../../shared/widgets/loading/custom_loading.widget.dart';
import '../../shared/widgets/text/custom.text.form.field.widget.dart';
import '../../shared/widgets/text/password.text.field.widget.dart';
import '../navigation/cubit/navigation_cubit.dart';
import '../navigation/navigation.screen.dart';
import 'bloc/login/login_bloc.dart';
import 'widget/signup.button.widget.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/auth.signin';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String, String> loginData = {
    'username': '',
    'password': '',
  };
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    context.read<NavigationCubit>().home();
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (user) =>
              context.pushReplacementNamed(NavigationScreen.routeName),
        );
      },
      child: MoonScaffold(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: context.width,
                minHeight: context.height,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: kSpacingX4),
                    Center(
                      child: Text(
                        'auth:login'.translate(context),
                        textAlign: TextAlign.center,
                        style: context.textTheme.headlineLarge,
                      ),
                    ),
                    Center(
                      child: Text(
                        'auth:login-desc'.translate(context),
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: kSpacingX4),
                    Text(
                      'username'.translate(context),
                      style: context.textTheme.bodyMedium,
                    ),
                    SizedBox(height: kSpacingHalf),
                    CustomTextFormField(
                      data: loginData,
                      mapKey: 'username',
                      prefixIcon: LucideIcons.user2,
                    ),
                    SizedBox(height: kSpacingX2),
                    Text(
                      'password'.translate(context),
                      style: context.textTheme.bodyMedium,
                    ),
                    SizedBox(height: kSpacingHalf),
                    PasswordTextField(
                      data: loginData,
                      mapKey: 'password',
                      prefixIcon: LucideIcons.lock,
                    ),
                    SizedBox(height: kSpacingX1),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          failure: (message) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                LucideIcons.xCircle,
                              ),
                              SizedBox(width: kSpacingX2),
                              Text(
                                message.translate(context),
                                style: context.textTheme.bodyMedium,
                              )
                            ],
                          ),
                          orElse: SizedBox.shrink,
                        );
                      },
                    ),
                    SizedBox(height: kSpacingX3),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const Center(child: CustomLoader()),
                          orElse: () => SignUpButton(
                            onPressed: login,
                            text: 'auth:login-button'.translate(context),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: kSpacingX4),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'auth:login-no-account'.translate(context),
                            style: context.textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () => context.pushNamed('/auth.signup'),
                            child: Text(
                              'auth:login-signup'.translate(context),
                              style: context.textTheme.bodyLarge!.copyWith(
                                color: kPrimary.shade100,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void login() {
    FocusManager.instance.primaryFocus?.unfocus();

    if (formKey.currentState != null && formKey.currentState!.validate()) {
      formKey.currentState?.save();
      if (loginData['username']!.isEmpty) {
        context.errorSnackBar('auth:enter-username');
        return;
      }
      if (loginData['password']!.isEmpty) {
        context.errorSnackBar('auth:enter-password');
        return;
      }
      context.read<LoginBloc>().add(LoginEvent.login(
            username: loginData['username']!,
            password: loginData['password']!,
          ));
    }
  }
}
