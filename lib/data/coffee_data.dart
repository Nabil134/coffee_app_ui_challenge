import 'package:flutter/material.dart';
final COFFEE_LIST=[
  {"image":"coffee1.png","subtitle":"with Chocolate","rating":"4.53","price":"4.53", "description":"A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More"},
  {"image":"coffee2.png", "subtitle":"with Oat Milk","rating":"3.90","price":"3.90","description": "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More"},
  {"image":"coffee3.png", "subtitle":"with Chocolate","rating":"4.5","price":"4.53","description"
      :"A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More"},
  {"image":"coffee4.png","subtitle":"with Oat Milk","rating":"4.0","price":"4.53","description":
  "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More"},
];

class Coffees {
  String description;

  Coffees({required this.description});
}
  List <Coffees> coffeeList=[
    Coffees(description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo"),
    Coffees(description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo"),
    Coffees(description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo"),
    Coffees(description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo"),
  ];


