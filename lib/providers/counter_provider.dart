import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int count = 0;

  addCount(){
    count++;
    notifyListeners();
  }

  int getCount() => count;
}