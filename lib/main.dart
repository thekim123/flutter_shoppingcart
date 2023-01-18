import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/component/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/component/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}


class ShoppingCartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  // _ -> private 로 만들기 위해 붙임. 엡바를 다른 함수에서 접근할 일이 없다.
  AppBar _buildShoppingCartAppBar() => AppBar(
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        print("클릭됨");
      },
    ),
    actions: [
      IconButton(
        onPressed: (){
          print("클릭됨11");
        },
        icon: Icon(Icons.shopping_cart),
      ),
      SizedBox(
        width: 16.0,
      ),
    ],
  );
}
