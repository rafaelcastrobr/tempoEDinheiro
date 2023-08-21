import 'package:flutter/material.dart';
import 'package:tempoEDinheiro/assets/app_assets.dart';
import 'package:tempoEDinheiro/components/app_texfields.dart';
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
        //backgroundColor: AppColors.,
        body: Column(
      children: [
        Column(
          children: [
            Image.asset(AppAssets.relogioIco),
            const SizedBox(
              height: 16,
            ),
            Text('Controle seu tempo \$\$', style: AppFonts.h2.copyWith(color: AppColors.textDefault)),
            const SizedBox(height: 16),
            //Image.asset(AppAssets.relogioIco),
          ],
        ),
        const SizedBox(height: 100),
        Column(
          children: [
            Text('Qual a sua graça?', style: AppFonts.h1.copyWith(color: AppColors.textDefault)),
            const SizedBox(height: 16),
            AppTextFields(
              controller: _nomeController,
              //width: 100,
              efeitoMeio: true,
            ),
            const SizedBox(height: 16),
            Image.asset(AppAssets.engrenagemIco),
          ],
        ),
      ],
    ));
  }
}
