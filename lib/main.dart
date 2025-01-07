import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:last_task_6_1/my_app.dart';
import 'package:last_task_6_1/src/core/block_observer/block_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
