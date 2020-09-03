
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextFormField Username(){

  return TextFormField(

    decoration: InputDecoration(

      hintText: 'Username',
      labelText: "Username",

        border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8),)
    )
    ),
  );
}