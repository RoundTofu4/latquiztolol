import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'disease_detail_page.dart';
import 'disease_data.dart';
import 'detail.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('List Penyakit Tanaman'),
      ),
      body: ListView.builder(
        itemCount: listDisease.length,
        itemBuilder: (context, index){
            return ListTile(
              title: Text(listDisease[index].name),
              subtitle: Text(listDisease[index].plantName),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => detail(disease: listDisease[index])
                  )
                );
              },
            );
        }
      ),
    );
  }
}
