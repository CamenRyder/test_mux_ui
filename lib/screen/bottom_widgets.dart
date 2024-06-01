import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Colors.grey[500],
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Icon(Icons.home),
            ),
          ),
          Expanded(
            child: Container(
              child: Icon(Icons.search),
            ),
          ),
          Expanded(
            child: Container(
              child: Icon(Icons.add),
            ),
          ),
          Expanded(
            child: Container(
              child: Icon(Icons.settings),
            ),
          ),
          Expanded(
            child: Container(
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
