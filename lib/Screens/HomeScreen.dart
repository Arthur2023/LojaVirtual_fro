import 'package:flutter/material.dart';
import 'package:loja_virtual_gatos/Tabs/HomeTab.dart';
import 'package:loja_virtual_gatos/Tabs/ProductsTab.dart';
import 'package:loja_virtual_gatos/Widgets/CustomDrawer.dart';

class HomeScreen extends StatelessWidget {
  final _PageController = PageController(); // Controla a passagem de telas

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _PageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_PageController),
        ), // Begin
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFFD32F2F),
            title: Text("Categories",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_PageController),
          body: ProductsTab(),
        ), // Products
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFD32F2F),
            title: Text("Shops",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_PageController),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 275,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/fro.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "In the Oven",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ), // Shops
        Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFD32F2F),
            title: Text("Requests",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_PageController),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 275,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/fro.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "In the Oven",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ), // Requests
      ],
    );
  }
}
