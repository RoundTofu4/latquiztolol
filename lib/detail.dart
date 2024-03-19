import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'disease_data.dart';

class detail extends StatefulWidget {
  const detail({super.key, required this.disease});
  final Diseases disease;

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.disease.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.disease.imgUrls,
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10,),
            Text(
                'Nama Tanaman: ${widget.disease.plantName}',
                style :   TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Gejala: ${widget.disease.symptom}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Keterangan: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.disease.nutshell.map((nut) => Text('> $nut')).toList(),
            )
          ],
        ),
      ),
    );
  }
}
