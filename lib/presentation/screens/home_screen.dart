import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progoneblocpract/business_logic/cubits/cubit/counter_cubit.dart';

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
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).decreament();
              },
              tooltip: '-',
              child: const Text('-'),
            ),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increament();
              },
              tooltip: '+',
              child: const Text('+'),
            ),
          ]),
        ],
      ),
    );
  }
}
