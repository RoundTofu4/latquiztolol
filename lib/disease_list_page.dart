import 'package:flutter/material.dart';
import 'disease_data.dart';
import 'old_disease_detail_page.dart';

class DiseaseListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Penyakit Tanaman'),
      ),
      body: ListView.builder(
        itemCount: listDisease.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listDisease[index].name),
            subtitle: Text(listDisease[index].plantName),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiseaseDetailPage(disease: listDisease[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
