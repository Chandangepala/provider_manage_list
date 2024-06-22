import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_manage_list/counter_app/HomePage.dart';
import 'package:provider_manage_list/list_app/list_page.dart';
import 'package:provider_manage_list/providers/counter_provider.dart';
import 'package:provider_manage_list/providers/list_provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [

          ChangeNotifierProvider(create: (contex) => CounterProvider()),

          ChangeNotifierProvider(create: (contex) => ListProvider())
        ],
        child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListPage(),
    );
  }
}

