import 'package:donut_app_2c_kantun/tabs/burger_tab.dart';
import 'package:donut_app_2c_kantun/tabs/donut_tab.dart';
import 'package:donut_app_2c_kantun/tabs/pancakes_tab.dart';
import 'package:donut_app_2c_kantun/tabs/pizza_dart.dart';
import 'package:donut_app_2c_kantun/tabs/smoothie_tab.dart';
import 'package:donut_app_2c_kantun/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png'),
    const MyTab(iconPath: 'lib/icons/burger.png'),
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    const MyTab(iconPath: 'lib/icons/pizza.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            // ícono izquierdo
            leading: Icon(Icons.menu, color: Colors.grey[800]),
            //Ícono derecho
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
            children: [
              //texto principal
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: Row(
                  children: [
                    Text(
                      "I want to ",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text("Eat",
                        style: TextStyle(
                            //tamaño de letra
                            fontSize: 32,
                            //negritas
                            fontWeight: FontWeight.bold,
                            //subrayado
                            decoration: TextDecoration.underline))
                  ],
                ),
              ),

              //pestañas o TabBar
              TabBar(tabs: myTabs),
              // contenido de pestañas (TabBarView)
              Expanded(
                child: TabBarView(children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothiesTab(),
                  PanCakesTab(),
                  PizzaTab()
                ]),
              )
              //Carrito (cart)
            ],
          )),
    );
  }
}
