import 'package:flutter/material.dart';

import 'package:project_x1/food.dart';
import 'package:project_x1/menu_widget.dart';

class MainPage extends StatelessWidget {
  List foodtitle = [
    Food(
        path: "images/Disney.jpg",
        name: "La-rotanda ",
        desc: "My name is yousef hashish ",
        price: "21",
        rate: "5.5"),
    Food(
        path: "images/Disney.jpg",
        name: "La-rotanda ",
        desc: "My name is yousef hashish ",
        price: "21",
        rate: "5.5"),
    Food(
        path: "images/Disney.jpg",
        name: "La-rotanda ",
        desc: "My name is yousef hashish ",
        price: "21",
        rate: "5.5")
  ];
  @override
  Widget build(Object context) {
    var backC = Color.fromARGB(255, 237, 237, 237);

    return Scaffold(
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
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project_x Resturant",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "The best for the best :)",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
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
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "You can get a 20% descound !",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: backC, borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(7.5),
                  child: const Text(
                    "Get Now!",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 25, left: 25),
            alignment: Alignment.topLeft,
            child: const Text(
              "Food Menu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: foodtitle.length,
                  itemBuilder: (context, index) =>
                      menu(food: foodtitle[index])))
        ],
      ),
    );
  }
}
