import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class AppTextFields extends StatefulWidget {
  final TextEditingController controller;
  final double width;
  final bool efeitoMeio;
  const AppTextFields({super.key, required this.controller, this.width = double.infinity, this.efeitoMeio = false});

  @override
  State<AppTextFields> createState() => _AppTextFieldsState();
}

class _AppTextFieldsState extends State<AppTextFields> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        cursorColor: AppColors.appRed,
        style: const TextStyle(color: AppColors.textDefault),
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textDefault),
            )),
      ),
    );
  }
}
