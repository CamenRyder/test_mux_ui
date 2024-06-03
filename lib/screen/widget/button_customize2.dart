import 'package:flutter/material.dart';

class ButtonNormal extends StatelessWidget {
  VoidCallback? onPress;
  String text;
  Color color;

  ButtonNormal({required this.text, required this.color, this.onPress});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress ?? () => {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Màu nền của button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Bo viền 12
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white, // Màu chữ trắng
              fontWeight: FontWeight.bold, // Chữ đậm
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white, // Màu icon trắng
          ),
        ],
      ),
    );
  }
}
