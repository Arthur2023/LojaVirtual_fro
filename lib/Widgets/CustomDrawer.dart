import 'package:flutter/material.dart';
import 'package:loja_virtual_gatos/Tiles/DrawerTile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  Widget _buildDrawerBack() => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFD32F2F), Color(0xFFD32F2F), Color(0xFFD32F2F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      ); // Gradient Background

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 0, right: 0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20, top: 20),
                padding: EdgeInsets.only(top: 10),
                height: 225,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8,
                      left: 32,
                      child: Text(
                        "Flor \nde \nGato",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ), // Title
                    Positioned(
                      left: 32,
                      bottom: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá,",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(height: 2),
                          GestureDetector(
                            child: Text(
                              "Entre ou cadastre-se >",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 17),
                            ),
                            onTap: () {}, //Precisa ser implementado!
                          ),
                        ],
                      ),
                    ), // Login / Register Button
                  ],
                ),
              ),  //  Title
              Divider(),
              DrawerTile(Icons.home, "Begin", pageController, 0), //  Begin
              DrawerTile(Icons.list, "Products", pageController, 1),  //  Products
              DrawerTile(Icons.location_city, "Shops", pageController, 2),  //  Shops
              DrawerTile(Icons.playlist_add_check, "Requests", pageController, 3) //  Requests
            ],
          ),
        ],
      ),
    );
  }
}
