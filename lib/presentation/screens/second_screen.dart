import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/cubits/cubit/counter_cubit.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
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
              color: Colors.red,
              child: const Text('Go to the Third Screen'),
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              }),
        ],
      ),
    );
  }
}
