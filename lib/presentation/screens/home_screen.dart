import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progoneblocpract/business_logic/cubits/cubit/counter_cubit.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The Counter now is '),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text('${state.number}');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decreament();
                },
                tooltip: '-',
                heroTag: null,
                child: const Text('-'),
              ),
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increament();
                },
                tooltip: '+',
                heroTag: null,
                child: const Text('+'),
              ),
            ],
          ),
          MaterialButton(
              color: Colors.amber,
              child: const Text('Go to the second Screen'),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              }),
        ],
      ),
    );
  }
}
