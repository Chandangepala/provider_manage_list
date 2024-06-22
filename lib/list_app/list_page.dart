import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_manage_list/list_app/add_list_data.dart';
import 'package:provider_manage_list/providers/counter_provider.dart';
import 'package:provider_manage_list/providers/list_provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {

    //List<Map<String, dynamic>> notesList = Provider.of<ListProvider>(context).getData();

    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddListData()));
      }, child: Icon(Icons.navigate_next_rounded),),
      body: Consumer<ListProvider>(builder: (context, provider, child){
        var notesList = provider.getData();
        return ListView.builder(
            itemCount: notesList.length,
            itemBuilder: (context, index){
              return ListTile(
                onLongPress: (){
                  provider.updateData({
                    'title': "Updated Title",
                    'desc': "I got updated, Yay!"
                  }, index);
                },
                title: Text(notesList[index]['title']),
                subtitle: Text(notesList[index]['desc']),
                trailing: IconButton(onPressed: (){
                  provider.delete(index);
                }, icon: Icon(Icons.delete)),
              );
            });
      }),
    );
  }
}
