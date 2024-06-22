import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_manage_list/providers/list_provider.dart';

class AddListData extends StatelessWidget {
  const AddListData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Provider.of<ListProvider>(context, listen: false).addData();
          Navigator.pop(context);
        }, child: Text("Add Data")),
      ),
    );
  }
}
