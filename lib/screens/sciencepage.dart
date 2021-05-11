import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SciencePage extends StatefulWidget {
  @override
  _SciencePageState createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: FutureBuilder(
              future: DefaultAssetBundle
                  .of(context)
                  .loadString('lib/assets/json/science.json'),
              builder: (context, snapshot) {
                // Decode the JSON
                var new_data = json.decode(snapshot.data.toString());

                return ListView.builder(
                  // Build the ListView
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text("Name: " + new_data[index]['questions']),
                            SizedBox(height: 10,),

                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: new_data == null ? 0 : new_data.length,
                );
              }),
        ),
      ));
  }
}
