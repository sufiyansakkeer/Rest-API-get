import 'package:flutter/material.dart';

import 'package:rest_api/apis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rest api ',
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final result = await getNumberFact(number: 90);
            print(result.text.toString());
          },
          child: const Text('Result of number'),
        ),
      ),
    );
  }
}
