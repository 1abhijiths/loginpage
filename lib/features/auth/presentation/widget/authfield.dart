import 'package:flutter/material.dart';

class Authfield extends StatelessWidget {
  final String hnttxt;
  final TextEditingController controlller;
  final bool obsctxt;
  const Authfield({
    super.key,
    required this.hnttxt,
    required this.controlller,
    required this.obsctxt});

  @override
  Widget build(BuildContext context) {
    return TextField(
       controller:controlller,
       obscureText: obsctxt,
      decoration: InputDecoration(
        hintText: hnttxt,
       

      ),
    
    );
  }
}