import 'package:final_project/bloc/counter_bloc.dart';
import 'package:final_project/screens/counter_screen/widgets/btn_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter on BloC'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BtnItem(
              icon: const Icon(Icons.remove),
              onPress: () => BlocProvider.of<CounterBloc>(context)
                  .add(DecrementCounterEvent()),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: const TextStyle(fontSize: 45),
                );
              },
            ),
            BtnItem(
              icon: const Icon(Icons.add),
              onPress: () => BlocProvider.of<CounterBloc>(context)
                  .add(IncrementCounterEvent()),
            ),
          ],
        ),
      ),
    );
  }
}
