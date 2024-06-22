import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_manage_list/providers/counter_provider.dart';

class AddNumber extends StatelessWidget {
  const AddNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Provider.of<CounterProvider>(context, listen: false).addCount();
          Navigator.pop(context);
        }, child: Text("Add Number")),
      ),
    );
  }
}
