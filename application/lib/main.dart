import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/const.dart';
import 'core/localizations.dart';
import 'core/routes.dart';
import 'core/theme.dart';
import 'features/appointments/logic/bloc/appointments_bloc.dart';
import 'features/auth/bloc/login/login_bloc.dart';
import 'features/auth/bloc/signup/signup_bloc.dart';
import 'features/auth/signup.screen.dart';
import 'features/duaa/logic/duaa/duaa_cubit.dart';
import 'features/navigation/cubit/navigation_cubit.dart';
import 'features/navigation/navigation.screen.dart';
import 'features/reminders/logic/reminders/reminders_bloc.dart';
import 'features/surat/logic/surat_lesson/surah_lesson_cubit.dart';
import 'logic/auth/auth_bloc.dart';
import 'logic/localizations/localizations_bloc.dart';
import 'logic/search/search_cubit.dart';
import 'logic/time.range/time_range_cubit.dart';
import 'shared/services/helpers/dio.helper.dart';
import 'shared/widgets/error/error.screen.dart';
import 'shared/widgets/error/noconnection.screen.dart';
import 'shared/widgets/loading/loading.screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AuthBloc authBloc;
  @override
  void initState() {
    DioHelper.init();
    authBloc = AuthBloc();
    authBloc.add(const AuthEvent.appstarted());
    super.initState();
  }

  @override
  void dispose() {
    authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LocalizationsBloc>(
              create: (context) => LocalizationsBloc()),
          BlocProvider(
            create: (context) => authBloc,
          ),
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(authBloc),
          ),
          BlocProvider<SignUpBloc>(
            create: (context) => SignUpBloc(authBloc),
          ),
          BlocProvider<NavigationCubit>(create: (context) => NavigationCubit()),
          BlocProvider<SearchCubit>(create: (context) => SearchCubit()),
          BlocProvider<TimeRangeCubit>(create: (context) => TimeRangeCubit()),
          BlocProvider<SurahLessonCubit>(
              create: (context) => SurahLessonCubit()),
          BlocProvider<RemindersBloc>(create: (context) => RemindersBloc()),
          BlocProvider<AppointmentsBloc>(
              create: (context) => AppointmentsBloc()),
          BlocProvider<DuaaCubit>(create: (context) => DuaaCubit()),
        ],
        child: ScreenUtilInit(
            designSize: const Size(428, 946),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              FlutterNativeSplash.remove();
              return BlocBuilder<LocalizationsBloc, LocalizationsState>(
                builder: (context, state) {
                  return MaterialApp(
                      title: 'Nour',
                      debugShowCheckedModeBanner: false,
                      theme: AppTheme.darkTheme(),
                      scrollBehavior: MyScrollBehavior(),
                      locale: state.locale,
                      supportedLocales:
                          supportedLanguages.map((e) => Locale(e)).toList(),
                      localeResolutionCallback: (locale, supportedLocales) {
                        for (var supportedLocale in supportedLocales) {
                          if (supportedLocale.languageCode ==
                              locale!.languageCode) {
                            return supportedLocale;
                          }
                        }
                        return supportedLocales.first;
                      },
                      localizationsDelegates: [
                        AppLocalizations(
                          state.locale,
                        ),
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      routes: AppRoutes.routes,
                      home: StreamBuilder<ConnectivityResult>(
                          stream: Connectivity().onConnectivityChanged,
                          builder: (context, snapshot) {
                            if (snapshot.data == ConnectivityResult.none) {
                              return const NoInternetScreen();
                            }
                            return BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return state.when(
                                    initial: () => const SizedBox.shrink(),
                                    loading: () {
                                      FlutterNativeSplash.remove();
                                      return const LoadingScreen();
                                    },
                                    authenticated: (user) =>
                                        const NavigationScreen(),
                                    unauthenticated: () => const SignUpScreen(),
                                    failure: (message) {
                                      return ErrorScreen(
                                        message: message,
                                        onRetry: () {
                                          authBloc.add(
                                              const AuthEvent.appstarted());
                                        },
                                      );
                                    });
                                // return LoginScreen();
                              },
                            );
                          }));
                },
              );
            }));
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
