import 'package:flutter/material.dart';

class CommonTextFormFiled extends StatelessWidget {
  const CommonTextFormFiled({
    super.key, required this.hintext, required this.icon, this.prefiex,
  });
  final Icon ?prefiex;
  final String hintext;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:InputDecoration(
        hintText: hintext,
        hintStyle: TextStyle(color: Colors.grey),
        suffixIconColor: Colors.grey,
        suffixIcon: icon,
        prefixIconColor: Colors.grey,
        prefixIcon: prefiex,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey)
        ),
      ),
    );
  }
}
