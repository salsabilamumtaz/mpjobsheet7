// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';



class TeksUtama extends StatefulWidget {

  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}


class StateTeksUtama extends State<TeksUtama> {

  var listNama = [
    'SALSABILA MUMTAZ', 'ANA SAFITRI', 'GIAS GARDA PAMUNGKAS', 'LUKMAN FAOZI',
    'NIAM ABDALLAH NAWAV',
  ];
  var listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,Colors.blue, Colors.yellow
  ];
    
  int index = 0;

  void incrementIndex () {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(
          color: Colors.black12,
          spreadRadius: 5,
          offset: Offset.fromDirection(-100, 50.0),
          blurRadius: 2,
        )]
      ),
      child: Column(
        children: [
          Text(
            'Apa Kabar',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length]
            ),
          )
        ],
      ),
    );
  
  }


}

// class TeksUtama extends StatefulWidget {
//   final state = StateTeksUtama();

//   @override
//   State<StatefulWidget> createState() => state;
// }


void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Halo Dunia'
          ),
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'random',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
          ),
      ),
      
    )
  );
}