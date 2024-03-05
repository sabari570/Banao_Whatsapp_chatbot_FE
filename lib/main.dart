import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_repository/user_repository.dart';
import 'package:whatsapp_chatbot_fe/screens/home_screen/home_screen.dart';

void main() {
  final client = ApiClient();
  runApp(MyApp(
    authRepo: AuthRepo(client),
    userRepo: UserRepo(client),
  ));
}

class MyApp extends StatelessWidget {
  final AuthRepo authRepo;
  final UserRepo userRepo;
  const MyApp({
    super.key,
    required this.authRepo,
    required this.userRepo,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => authRepo),
        RepositoryProvider(create: (context) => userRepo),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Whatsapp Chatbot',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
