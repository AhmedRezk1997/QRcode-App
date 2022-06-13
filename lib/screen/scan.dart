import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';

class Scanpage extends StatefulWidget {
  Scanpage({Key? key}) : super(key: key);

  @override
  State<Scanpage> createState() => _ScanpageState();
}

class _ScanpageState extends State<Scanpage> {
  String qrRes = "Not Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: Text("Scan QR code ", style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Result",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                qrRes,
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                padding: EdgeInsets.all(15),
                onPressed: () async {
                  var scan = await BarcodeScanner.scan();
                  //  String scan = (await BarcodeScanner.scan()) as String;
                  setState(() {
                    qrRes = scan as String;
                  });
                },
                child: Text(
                  "Scan ",
                  style: TextStyle(
                      color: Colors.grey[70], fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ]),
      ),
    );
  }
}
