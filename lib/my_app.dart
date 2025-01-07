import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_task_6_1/src/Features/home/cubit/product_cubit/product_cubit.dart';
import 'package:last_task_6_1/src/Features/home/view/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getProductDataCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            //elevation: 1,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.deepPurpleAccent,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
