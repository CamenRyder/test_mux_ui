import 'package:flutter/material.dart';

void showInSnackBar(String message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
