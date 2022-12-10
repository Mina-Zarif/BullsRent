import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/shared/cubit/cubit.dart';

import 'UI/LoginScreen/LoginScreen.dart';
import 'UI/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
           primaryColor: Colors.grey,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

