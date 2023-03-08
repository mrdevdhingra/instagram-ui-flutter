import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/bubble_stories.dart';
import 'package:flutter_application_1/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    'Radha',
    'Devansh',
    'Gopi',
    'Vindhya',
    'Kunal',
    'Pari',
    'Rashi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.favorite),
                
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.near_me),
                ),
              ],
            )
          ],
        ),

      ),

      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return BubbleStories(text: people[index]);
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context,index){
              return UserPosts(
                name: people[index],
                );
              }),
          ),
        ],
      ),  
    );
  }
}