import 'package:flutter/material.dart';
import 'posisiRuang.dart';

class CariBuku extends StatefulWidget {
  @override
  _CariBukuState createState() => _CariBukuState();
}

class _CariBukuState extends State<CariBuku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistem Katalog'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(

          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: 'Masukkan Judul Buku',
                  icon: Icon(Icons.search),
                  labelText: 'Cari Buku'
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PosisiRuang()));
              },
              child: Text('Cari'),
            )
          ],
        ),
      ),
    );
  }
}
