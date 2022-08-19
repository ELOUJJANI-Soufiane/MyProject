import 'package:flutter/material.dart';

InputDecoration customDecorationField(
  Icon icon,
  String title,
) =>
    InputDecoration(
      labelText: title,
      prefixIcon: icon,
      border: OutlineInputBorder(),
    );
