import 'package:flutter/material.dart';

import 'cariBuku.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sistem Katalog'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Container(
                height: 320.0,
                color: Colors.blueAccent,
              ),
            ),
            Row(
              children: <Widget>[
                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CariBuku()));
                    },
                    child: Card(

                        margin: EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)
                        ),
                        elevation: 5.0,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            direction: Axis.vertical,
                            children: <Widget>[

                              Icon(
                                Icons.search,
                                color: Colors.blue,
                                size: 90.0,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 6.0),
                                  child: Text('Cari Buku', style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                  ),))
                            ],
                          ),
                        )),
                  ),
                ),
                Center(
                  child: Card(
                      margin: EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)
                      ),
                      elevation: 5.0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          direction: Axis.vertical,
                          children: <Widget>[

                            Icon(
                              Icons.add_circle,
                              color: Colors.blue,
                              size: 90.0,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 22.0),
                                child: Text('Insert', style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                ),))
                          ],
                        ),
                      )),
                ),
                Center(
                  child: Card(
                      margin: EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)
                      ),
                      elevation: 5.0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          direction: Axis.vertical,
                          children: <Widget>[

                            Icon(
                              Icons.help,
                              color: Colors.blue,
                              size: 90.0,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 12.0),
                                child: Text('Bantuan', style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                ),))
                          ],
                        ),
                      )),
                ),

              ],
            ),

          ],
        ));
  }
}
