import 'package:flutter/material.dart';

import '../util/explore_grid.dart';

class UserExplore extends StatelessWidget {
  const UserExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
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
      ),
      body: ExploreGrid(),
    );
  }
}