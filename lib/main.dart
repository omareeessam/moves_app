import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teest_apiiii/business_logic/app_cubit.dart';
import 'package:teest_apiiii/constants/block_observer.dart';
import 'package:teest_apiiii/data/remote/data_providers/my_dio.dart';
import 'package:teest_apiiii/presentaion/screens/home/home_layout.dart';

void main() {
  Bloc.observer =MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
MyDio.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => AppCubit()..getmovies(),
      child: MaterialApp(

        home: HomeLayout(),
      ),
    );
  }
}
