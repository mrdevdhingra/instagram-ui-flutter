import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                     height: 40,
                     width: 40,
                     decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                     ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          height:400 ,
          color: Colors.grey[300],
        ),
        //Icons
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MyIcon(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline_rounded),
                  ),
                  Icon(Icons.near_me_outlined),
                ],
              ),
              Icon(Icons.bookmark_border),
            ],
          ),
        ),
        //Liked
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text(
                'Liked by '
        
              ),
              Text(
                'devdhingra',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and'),
              Text(' others.',
              style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),

        //Caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' sharing my sweet memories with you guys fom my us trip.'
                ),
              ]
            ),
          ),
        )

      ],
    );
  }
}

class MyIcon extends StatefulWidget {
  @override
  _MyIconState createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFavorited = !_isFavorited;
        });
      },
      child: Icon(
        _isFavorited ? Icons.favorite : Icons.favorite_outline,
        color: Colors.black,
      ),
    );
  }
}