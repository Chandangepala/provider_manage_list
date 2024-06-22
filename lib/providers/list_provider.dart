import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{
  List<Map<String, dynamic>> _notesList = [ ];

  addData(){
    _notesList.add(
      {
        'title': "New Title",
        'desc': "This is Amazing day!"
      }
    );

    notifyListeners();
  }

  List<Map<String, dynamic>> getData() => _notesList;

  delete(int index){
    _notesList.removeAt(index);
    notifyListeners();
  }

  updateData(Map<String, dynamic> updatedValue, int index){
    _notesList[index] = updatedValue;
    notifyListeners();
  }
}