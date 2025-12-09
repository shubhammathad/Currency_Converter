import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _Practice();
}

class _Practice extends State<Practice> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  Color prefixColor = Colors.black38;

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 90.17;
      prefixColor = Colors.black;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 9.0),
          child: Text(
            "Title",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text
            Text(
              textAlign: TextAlign.center,
              "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: TextStyle(color: Colors.white, fontSize: 38),
            ),

            //Text Field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: textEditingController,
                style: TextStyle(color: Colors.black, fontSize: 23),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "Enter the Amount in Dollars",
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 23),
                  prefixIcon: Icon(Icons.monetization_on, size: 30),
                  prefixIconColor: prefixColor,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),

            //Button
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: ElevatedButton(
                onPressed: convert,
                //................................................
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2),
                  elevation: 10,
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                //................................................
                child: Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
