import 'package:flutter/material.dart';
import 'package:tempoEDinheiro/config/app_colors.dart';
import 'package:tempoEDinheiro/config/app_fonts.dart';
import 'package:tempoEDinheiro/helpers/app_scaffold.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final TextEditingController _nomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Column(
      children: [
        Column(
          children: [
            Text(
              'Trabalho',
              style: AppFonts.h1.copyWith(color: AppColors.textDefault),
            ),
            const SizedBox(height: 20),
            Text('Controle seu tempo \$\$', style: AppFonts.h2.copyWith(color: AppColors.textDefault)),
          ],
        ),
        const SizedBox(height: 100),
        Column(
          children: [
            Text('Qual a sua graça?', style: AppFonts.h2.copyWith(color: AppColors.textDefault)),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
