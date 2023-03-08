import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/explore_grid.dart';
import 'package:flutter_application_1/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              'Shop',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children:  [
                Icon(Icons.calendar_month),
                
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.menu),
                ),
              ],
            )
          ],
        ),

      ),
      body: Column(
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[300],
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500],),
                Container(
                  child: Text('Search', style: TextStyle(color: Colors.grey[500]),),
                ),
              ],
            ),
          ),
        ),

          Expanded(
            child: ShopGrid(),
          ),
        ],
      ),  
    );
    
  }
}