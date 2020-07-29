import 'package:flutter/material.dart';

const textInputDecoration = const InputDecoration(
  icon: Icon(Icons.lock),
  labelText: 'Your Password',
  enabledBorder: OutlineInputBorder(
      borderSide:
      BorderSide(color: Colors.white, width: 2.0)),
  focusedBorder: OutlineInputBorder(
      borderSide:
      BorderSide(color: Colors.white, width: 2.0)),
);