import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class AppTextInput extends StatefulWidget {
  const AppTextInput({super.key, required this.name,  this.isPassword = false, required this.controller , this.prefix,});

  final TextEditingController controller  ;
  final String name ;
  final Icon? prefix;

  final bool isPassword;


  @override
  State<AppTextInput> createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  late bool _obscure = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign:TextAlign.start,
        controller:widget.controller,
      obscureText: _obscure,

      decoration: InputDecoration (
        labelText:widget.name,
        labelStyle: GoogleFonts.poppins(color: AppColors.grey, ),
        prefixIcon: widget.prefix,
        suffix:widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscure ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () => setState(() => _obscure = !_obscure),
        )
            : null,


        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.black, width: 1),
        ),


      ),
        cursorColor: AppColors.primaryColor,



    );
  }
}
