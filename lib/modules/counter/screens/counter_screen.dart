import 'package:counter_app/modules/counter/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "Click${counter == 1 ? '' : 's'}",
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloattingActionButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  counter++;
                });
              }),
          const SizedBox(height: 8),
          CustomFloattingActionButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  counter--;
                });
              }),
          const SizedBox(height: 8),
          CustomFloattingActionButton(
              icon: Icons.refresh,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              }),
        ],
      ),
    );
  }
}
