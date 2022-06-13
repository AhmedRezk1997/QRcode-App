import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text(
          "QR code",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage("images/1.png")),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.of(context).pushNamed("generate");
                },
                child: Text(
                  "Generate QR code",
                  style: TextStyle(
                      color: Colors.grey[70], fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.of(context).pushNamed("scan");
                },
                child: Text(
                  "Scan QR code",
                  style: TextStyle(
                      color: Colors.grey[70], fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ]),
      ),
    );
  }
}
