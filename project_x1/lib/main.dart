import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var primeC = const Color.fromARGB(255, 226, 169, 72);
    var backC = Color.fromARGB(255, 221, 194, 147);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: backC,
        appBar: AppBar(
          leading: const Icon(Icons.error),
          title: const Text(
            "Project_x rest",
            style: TextStyle(color: Colors.red),
          ),
          backgroundColor: backC,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: primeC, borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Project_x Resturant"),
                      SizedBox(
                        height: 15,
                      ),
                      Text("The best for the best :) ")
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "images/Disney.jpg",
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
