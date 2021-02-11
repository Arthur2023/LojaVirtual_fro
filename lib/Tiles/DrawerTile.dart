import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD32F2F),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          controller.jumpToPage(page);
        }, // function not created
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Container(
            color: Color(0xFFD32F2F),
            height: 55,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 32,
                ),
                Icon(
                  icon,
                  size: 32,
                  color: controller.page.round() == page ?
                      Theme.of(context).primaryColor :
                      Colors.grey[500]
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  text,
                  style: TextStyle(color:Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
