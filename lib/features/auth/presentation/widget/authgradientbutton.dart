import 'package:flutter/material.dart';
import 'package:loginpage/core/theme/color.dart';

class authgbtn extends StatelessWidget {
  
  const authgbtn({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            AppPallete.gradient1,
            AppPallete.gradient2
          ],

        ),
        borderRadius: BorderRadius.circular(17)
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Sign up"),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent
        ),
        
        ),
    );
  }
}