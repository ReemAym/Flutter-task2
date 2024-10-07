import 'package:basket_ball_counter/cubit/counter_cubit.dart';
import 'package:basket_ball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/home_page.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  // const PointsCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
