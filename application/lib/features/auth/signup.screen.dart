import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:app/features/auth/core/avatars.type.dart';
import 'package:app/features/auth/core/user.type.dart';
import 'package:app/features/navigation/navigation.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../shared/screens/moon.screen.dart';
import '../../shared/widgets/image/custom_local_image.widget.dart';
import '../../shared/widgets/text/custom.text.form.field.widget.dart';
import '../../shared/widgets/text/password.text.field.widget.dart';
import 'bloc/signup/signup_bloc.dart';
import 'widget/signup.button.widget.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = '/auth.signup';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int currentPageIndex = 0;
  final PageController controller = PageController();
  final formKey = GlobalKey<FormState>();
  final Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            context.pushNamedAndRemoveUntil(NavigationScreen.routeName);
          },
          orElse: () {},
        );
      },
      child: MoonScaffold(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: formKey,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: [
              UserTypeSignUpForm(
                formKey: formKey,
                nextPage: nextPage,
              ),
              UserInfoSignUpForm(
                formKey: formKey,
                nextPage: nextPage,
                previousPage: previousPage,
              ),
              AvatarTypeSignUpForm(
                formKey: formKey,
                nextPage: nextPage,
                previousPage: previousPage,
              ),
            ],
          ),
        ),
      )),
    );
  }

  void nextPage(Map<String, dynamic> input) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      data.addAll(input);

      if (controller.page == 2) {
        context.read<SignUpBloc>().add(
              SignUpEvent.signup(
                userType: data['userType'],
                email: data['email'],
                username: data['username'],
                password: data['password'],
                avatar: data['avatar'],
              ),
            );
        return;
      }
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void previousPage(Map<String, dynamic> input) {
    data.removeWhere(
      (key, value) => input.containsKey(key),
    );

    controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}

class UserTypeSignUpForm extends StatelessWidget {
  const UserTypeSignUpForm(
      {super.key, required this.formKey, required this.nextPage});
  final GlobalKey<FormState> formKey;
  final void Function(Map<String, dynamic> data) nextPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "auth:signup:select_user_type".translate(context),
          style: context.textTheme.headlineLarge,
        ),
        const SizedBox(height: 20),
        AvatarSelectorCard(
          onTap: () => nextPage({
            'userType': UserTypes.teacher.value,
          }),
          image: "/avatars/teacher.png",
          title: "auth:signup:teacher",
        ),
        SizedBox(height: kSpacingX3),
        AvatarSelectorCard(
          onTap: () => nextPage({
            'userType': UserTypes.student.value,
          }),
          image: "/avatars/student.png",
          title: "auth:signup:student",
        ),
      ],
    );
  }
}

class AvatarSelectorCard extends StatelessWidget {
  const AvatarSelectorCard({
    super.key,
    required this.onTap,
    required this.image,
    this.title,
  });

  final String image;
  final String? title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            CustomLocalImage(
              width: kSpacingX12,
              image: image,
            ),
            if (title != null)
              Text(
                title!.translate(context),
                style: context.textTheme.titleLarge,
              ),
          ],
        ),
      ),
    );
  }
}

class UserInfoSignUpForm extends StatelessWidget {
  const UserInfoSignUpForm(
      {super.key,
      required this.formKey,
      required this.nextPage,
      required this.previousPage});
  final GlobalKey<FormState> formKey;
  final void Function(Map<String, dynamic> data) nextPage;
  final void Function(Map<String, dynamic> data) previousPage;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = {};
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'auth:signup:username'.translate(context),
                  style: context.textTheme.bodyMedium,
                ),
                SizedBox(height: kSpacingHalf),
                CustomTextFormField(
                  data: data,
                  mapKey: 'username',
                  hintText: 'auth:signup:username'.translate(context),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'auth:signup:username_error'.translate(context);
                    }
                    return null;
                  },
                  prefixIcon: LucideIcons.user2,
                ),
                SizedBox(height: kSpacingX2),
                Text(
                  'auth:signup:email'.translate(context),
                  style: context.textTheme.bodyMedium,
                ),
                SizedBox(height: kSpacingHalf),
                CustomTextFormField(
                  data: data,
                  mapKey: 'email',
                  hintText: 'auth:signup:email'.translate(context),
                  validator: (value) {
                    if (!value!.isEmail) {
                      return 'auth:signup:invalid.email'.translate(context);
                    }
                    return null;
                  },
                  prefixIcon: LucideIcons.mail,
                ),
                SizedBox(height: kSpacingX2),
                Text(
                  'auth:signup:password'.translate(context),
                  style: context.textTheme.bodyMedium,
                ),
                SizedBox(height: kSpacingHalf),
                PasswordTextField(
                  data: data,
                  mapKey: 'password',
                  hintText: 'auth:signup:password'.translate(context),
                  validator: (value) {
                    if (value!.length < 6) {
                      return 'auth:signup:password_error'.translate(context);
                    }
                    return null;
                  },
                  prefixIcon: LucideIcons.lock,
                ),
                SizedBox(height: kSpacingX1),
                Text(
                  'auth:signup:confirm'.translate(context),
                  style: context.textTheme.bodyMedium,
                ),
                SizedBox(height: kSpacingHalf),
                PasswordTextField(
                  data: data,
                  mapKey: 'confirm',
                  hintText: 'auth:signup:confirm'.translate(context),
                  prefixIcon: LucideIcons.lock,
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingX2),
          Row(
            children: [
              Expanded(
                child: SignUpButton(
                  text: 'auth:signup:previous',
                  onPressed: () {
                    previousPage(data);
                  },
                ),
              ),
              SizedBox(width: kSpacingX1),
              Expanded(
                child: SignUpButton(
                  text: 'auth:signup:next',
                  onPressed: () {
                    nextPage(data);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AvatarTypeSignUpForm extends StatelessWidget {
  const AvatarTypeSignUpForm(
      {super.key,
      required this.formKey,
      required this.nextPage,
      required this.previousPage});
  final GlobalKey<FormState> formKey;
  final void Function(Map<String, dynamic> data) nextPage;
  final void Function(Map<String, dynamic> data) previousPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  "auth:signup:select_avatar".translate(context),
                  style: context.textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Center(
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: [
                        AvatarSelectorCard(
                          onTap: () =>
                              nextPage({'avatar': AvatarTypes.first.path}),
                          image: AvatarTypes.first.path,
                        ),
                        AvatarSelectorCard(
                          onTap: () =>
                              nextPage({'avatar': AvatarTypes.second.path}),
                          image: AvatarTypes.second.path,
                        ),
                        AvatarSelectorCard(
                          onTap: () =>
                              nextPage({'avatar': AvatarTypes.third.path}),
                          image: AvatarTypes.third.path,
                        ),
                        AvatarSelectorCard(
                          onTap: () =>
                              nextPage({'avatar': AvatarTypes.forth.path}),
                          image: AvatarTypes.forth.path,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingX3),
          SignUpButton(
            text: 'auth:signup:previous',
            onPressed: () {
              previousPage({});
            },
          ),
        ],
      ),
    );
  }
}
