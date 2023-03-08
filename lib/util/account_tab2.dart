
import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  const AccountTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Color.fromARGB(255, 100, 252, 105),
          ),
        );
      }
      );
  }
}