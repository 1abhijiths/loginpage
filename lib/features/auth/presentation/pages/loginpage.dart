
import 'package:flutter/material.dart';
import 'package:loginpage/core/theme/color.dart';
import 'package:loginpage/features/auth/presentation/pages/signuppage.dart';
import 'package:loginpage/features/auth/presentation/widget/authfield.dart';
import 'package:loginpage/features/auth/presentation/widget/authgradientbutton.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  
  final emailcontroller =TextEditingController();
  final pwcontroller =TextEditingController();

  @override
  void dispose()
  {
    emailcontroller.dispose();
    pwcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPallete.backgroundColor,
      ),
      body:Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login .",
             style: TextStyle(
              fontSize: 50,
             ),
               ),
               SizedBox(height: 20),

                SizedBox(height: 10),
               Authfield(hnttxt: '  email',
               obsctxt: false,
               controlller: emailcontroller),
                SizedBox(height: 10),
               Authfield(hnttxt: '  password',
               obsctxt: true,
               controlller: pwcontroller),
               SizedBox(height: 20),
               authgbtn(),
               SizedBox(height: 10),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signuppage()));
                },
                 child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Dont have an account? ",style: TextStyle(color: AppPallete.gradient1)),
                    TextSpan(text: "Sign up ")
                  ]
                 )),
               )
          ],
        ),
      )
    );
  }
}