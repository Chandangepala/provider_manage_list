import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_manage_list/counter_app/add_number.dart';
import 'package:provider_manage_list/providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddNumber()));
        },
        child: Icon(Icons.navigate_next),
      ),
      body: Center(
        child: Text(
          "${Provider.of<CounterProvider>(context).getCount()}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
    );
  }
}
