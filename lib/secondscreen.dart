import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_provider/provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  final List<int> numbers;
  const SecondScreen({super.key, required this.numbers});

  @override
  Widget build(BuildContext context) {
    log('ddd');
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondScreen(
                          numbers: [],
                        )));
              },
              icon: Icon(Icons.next_plan))
        ],
      ),
      body: Column(
        children: [
          Consumer<NumbeListProvider>(builder: (context, pro, _) {
            return Text('the total count is ${pro.count}');
          }),
        
        ],
      ),
    );
  }
}
