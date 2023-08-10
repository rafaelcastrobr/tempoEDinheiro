import 'package:flutter/material.dart';
import 'package:tempoEDinheiro/config/app_colors.dart';

class AppScaffold extends StatefulWidget {
  final Widget body;
  final Color? backgroundColor;
  const AppScaffold({
    Key? key,
    required this.body,
    this.backgroundColor = AppColors.backgroundDefault,
  }) : super(key: key);

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: widget.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(child: widget.body),
          ),
        ),
      ),
    );
  }
}
