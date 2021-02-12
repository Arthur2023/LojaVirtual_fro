import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual_gatos/Datas/ProductData.dart';

class ProductScreen extends StatefulWidget {
  final ProductData product;

  ProductScreen(this.product);

  @override
  _ProductScreenState createState() => _ProductScreenState(product);
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductData product;

  String size;


  _ProductScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD32F2F),
        title: Text(
          product.title,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              boxFit: BoxFit.cover,
              images: product.images.map((url) {
                return NetworkImage(url);
              }).toList(),
              autoplay: false,
              dotSize: 4,
              dotColor: Colors.white,
              dotIncreasedColor: Color(0xFFD32F2F),
              dotSpacing: 15,
              dotBgColor: Colors.transparent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  product.title,
                  style: TextStyle(
                      color: Color(0xFFD32F2F),
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                  maxLines: 3,
                ),
                Text(
                  "\$ ${product.price.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  "Tamanhos",
                  style: TextStyle(
                      color: Color(0xFFD32F2F),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: GridView(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 5,
                          childAspectRatio: 0.5),
                      children: product.sizes.map((dataSize) {
                        return InkWell(
                          onTap: (){
                            setState(() {
                              size = dataSize;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              border: Border.all(color: dataSize == size ? Color(0xFFD32F2F) : Colors.grey),
                            ),
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            child: Text(dataSize),
                          ),
                        );
                      }).toList(),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
