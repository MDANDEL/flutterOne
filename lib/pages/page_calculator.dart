import 'package:flutter/material.dart';

class PageState extends StatefulWidget {
  const PageState({Key? key}) : super(key: key);
  @override
  _PageStateState createState() => _PageStateState();
}

class _PageStateState extends State<PageState> {
  String _output = "0.00";



  String _onClick(String value) {
    return _output=value;
  }

  Widget buttonCalculator(String symbol, double sizeButton,
      {Color color = Colors.black, Color fontColor = Colors.white}) {
    sizeButton = MediaQuery.of(context).size.width;
    return Container(
      width: sizeButton / 4,
      height: sizeButton / 4,
      padding: EdgeInsets.all(2),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () => _onClick(symbol),
        child: Text(
          symbol,
          style: TextStyle(
            fontSize: 40,
            color: fontColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var sizeButton = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculatrice'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: sizeButton,
                    height: sizeButton /2.5,
                    color: Colors.white60,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(2),
                    child: Text(
                      _output,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : [
                  buttonCalculator("AC", sizeButton, color: Colors.red),
                  buttonCalculator("√", sizeButton),
                  buttonCalculator("%", sizeButton),
                  buttonCalculator("/", sizeButton, fontColor: Colors.orange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : [
                  buttonCalculator("7", sizeButton),
                  buttonCalculator("8", sizeButton),
                  buttonCalculator("9", sizeButton),
                  buttonCalculator("*", sizeButton, fontColor: Colors.orange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : [
                  buttonCalculator("4", sizeButton),
                  buttonCalculator("5", sizeButton),
                  buttonCalculator("6", sizeButton),
                  buttonCalculator("-", sizeButton, fontColor: Colors.orange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : [
                  buttonCalculator("1", sizeButton),
                  buttonCalculator("2", sizeButton),
                  buttonCalculator("3", sizeButton),
                  buttonCalculator("+", sizeButton, fontColor: Colors.orange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : [
                  buttonCalculator(",", sizeButton),
                  buttonCalculator("0", sizeButton),
                  SizedBox(
                    width: sizeButton / 2,
                    height: sizeButton / 4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () => _onClick("="),
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
