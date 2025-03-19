import 'package:donut_app_2c_kantun/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PanCakesTab extends StatelessWidget {
//listas de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Donky Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    [
      "Ice Cream",
      "Krispy Kreme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Donky Donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  PanCakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //cuantos elementos hay en la rejilla
        itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(12),
        // Preparatoria 1. cómo se distribuirán los elementos
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //para decir cuantas columnas usará
          crossAxisCount: 2,
          //relación de aspecto (proporción)
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          //cada elemento individual
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2],
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4]);
        });
  }
}
