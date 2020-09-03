
import 'package:flutter/material.dart';

TextFormField Password(){
  return TextFormField(

    decoration: InputDecoration(
        hintText: 'Password',
        labelText: "Password",

        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))
        )
    ),
  );
}