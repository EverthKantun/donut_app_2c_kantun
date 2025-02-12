import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
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

            // contenido de pestañas (TabBarView)

            //Carrito (cart)
          ],
        ));
  }
}
