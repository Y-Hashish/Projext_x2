import 'package:flutter/material.dart';
import 'package:project_x1/food.dart';

class menu extends StatelessWidget {
  final Food food;
  menu({required this.food});
  @override
  Widget build(Object context) {
    return Container(
      padding: const EdgeInsets.all(25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      margin: const EdgeInsets.only(left: 75, right: 75, bottom: 25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              fit: BoxFit.cover,
              "images/Disney.jpg",
              height: 140,
            ),
          ),
          Text(
            food.name.toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            food.desc.toString(),
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$" + food.price.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Text(food.rate.toString()),
                  const Icon(
                    Icons.star,
                    size: 12,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
