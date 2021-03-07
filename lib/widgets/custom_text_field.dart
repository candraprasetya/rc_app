import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  const CustomTextField(
      {Key key, this.hint, this.controller, this.isPassword = false})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 18),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: widget.controller,
        obscureText: (widget.isPassword)
            ? (hidePassword)
                ? true
                : false
            : false,
        style: GoogleFonts.poppins(),
        keyboardType: (widget.isPassword)
            ? TextInputType.visiblePassword
            : TextInputType.number,
        decoration: InputDecoration(
            suffixIcon: (widget.isPassword)
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: Icon((hidePassword)
                        ? Icons.visibility_off
                        : Icons.visibility),
                  )
                : SizedBox(),
            border: InputBorder.none,
            hintText: widget.hint,
            hintStyle: GoogleFonts.poppins(color: Colors.grey)),
      ),
    );
  }
}
