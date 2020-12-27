import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter App",
      home: Scaffold(
        appBar: AppBar(title: Text("Title in Bar")),
        body: Material(
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              sayHello(),
              style: TextStyle(color: Colors.white, fontSize: 36.0),
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    DateTime timeNow = new DateTime.now();
    int hour = timeNow.hour;
    if (hour < 12)
      hello = "Good Morning";
    else if (hour < 18)
      hello = "Good Afternoon";
    else
      hello = "Good Evening";

    String minutes = (timeNow.minute < 10)
        ? "0" + timeNow.minute.toString()
        : timeNow.minute.toString();

    return "It 's now " +
        timeNow.hour.toString() +
        ":" +
        minutes +
        "\n" +
        hello;
  }
}
