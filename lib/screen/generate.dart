import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generatepage extends StatefulWidget {
  Generatepage({Key? key}) : super(key: key);

  @override
  State<Generatepage> createState() => _GeneratepageState();
}

class _GeneratepageState extends State<Generatepage> {
  String qrdata = "https://github.com/AhmedRezk1997";
  final qrtxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text("Generate QR code ", style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QrImage(data: qrdata),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: qrtxt,
              decoration: InputDecoration(
                hintText: "enter data",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: EdgeInsets.all(15),
              onPressed: () async {
                if (qrtxt.text.isEmpty) {
                  setState(() {
                    qrdata = "https://flutter.dev";
                  });
                } else {
                  setState(() {
                    qrdata = qrtxt.text;
                  });
                }
              },
              child: Text(
                "Generate QR ",
                style: TextStyle(
                    color: Colors.grey[70], fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.indigo,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ],
        ),
      ),
    );
  }
}
