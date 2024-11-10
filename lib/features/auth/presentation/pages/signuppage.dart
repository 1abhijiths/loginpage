
import 'package:flutter/material.dart';
import 'package:loginpage/core/theme/color.dart';
import 'package:loginpage/features/auth/presentation/pages/loginpage.dart';
import 'package:loginpage/features/auth/presentation/widget/authfield.dart';
import 'package:loginpage/features/auth/presentation/widget/authgradientbutton.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final namecontroller =TextEditingController();
  final emailcontroller =TextEditingController();
  final pwcontroller =TextEditingController();

  @override
  void dispose()
  {
    emailcontroller.dispose();
    namecontroller.dispose();
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
            Text("Signup .",
             style: TextStyle(
              fontSize: 50,
             ),
               ),
               SizedBox(height: 20),
               Authfield(hnttxt: '  name',
               obsctxt: false,
               controlller: namecontroller,
               ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                },
                 child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Already  have an account? ",style: TextStyle(color: AppPallete.gradient1)),
                    TextSpan(text: "Login in",style:TextStyle(color: Colors.white))
                  ]
                 )),
               )
          ],
        ),
      )
    );
  }
}