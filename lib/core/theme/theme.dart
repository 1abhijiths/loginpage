
import 'package:flutter/material.dart';
import 'package:loginpage/core/theme/color.dart';

class Apptheme
{  
   static _border(Color coloor)=> OutlineInputBorder(

      borderSide: BorderSide(
        color:coloor,
        width:3,
      ),

     borderRadius:BorderRadius.circular(17),
    );
    
 static final  dartthememodee =ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppPallete.backgroundColor,
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder:_border(AppPallete.backgroundColor),

    focusedBorder:_border(AppPallete.gradient2)
  )
 );


}
