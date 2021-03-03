import 'package:flutter/material.dart';
import 'package:hello_world_flutter/second_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController ct = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.withOpacity(0.25),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Main Page",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.access_alarms),
                    prefixIcon: Icon(Icons.airplanemode_active),
                    prefixText: 'Namanya: ',
                    suffixText: 'done',
                    fillColor: Colors.lightBlue.withOpacity(0.2),
                    filled: true,
                    labelText: 'Nama Lengkap',
                    hintText: 'nama lengkap lho',
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.2), fontSize: 12),
                    labelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                    prefixStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                obscureText: true,
                maxLength: 5,
                onChanged: (v) {
                  setState(() {});
                },
                controller: ct,
              ),
              Text(ct.text),
              Center(
                child: ElevatedButton(
                  child: Text("Ke Second Page"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
