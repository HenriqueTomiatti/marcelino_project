import 'package:flutter/material.dart';
import 'package:portfolio_marcelino/constants/app_colors.dart';
import 'package:portfolio_marcelino/pages/subpage/contacts.dart';
import 'package:portfolio_marcelino/pages/subpage/budget.dart';
import 'package:portfolio_marcelino/pages/subpage/about.dart';
import 'package:portfolio_marcelino/pages/subpage/tattos.dart';
import 'package:portfolio_marcelino/state/app_state.dart';
import 'package:provider/provider.dart';
import '../widget/header_widget.dart';
import '../widget/sections_widget.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<AppState>(context, listen: false).loadData();
  }

  final GlobalKey _sobreKey = GlobalKey();
  final GlobalKey _tatuagensKey = GlobalKey();
  final GlobalKey _orcamentoKey = GlobalKey();
  final GlobalKey _contatoKey = GlobalKey();

  void _scrollToSection(GlobalKey keySection) {
    final context = keySection.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'title': 'Sobre', 'key': _sobreKey},
      {'title': 'Tatuagens', 'key': _tatuagensKey},
      {'title': 'Orçamentos', 'key': _orcamentoKey},
      {'title': 'Contatos', 'key': _contatoKey},
    ];

    final sections = [
      {'key': _sobreKey, 'widget': const AboutSection()},
      {'key': _tatuagensKey, 'widget': const TattoSection()},
      {'key': _orcamentoKey, 'widget': const BudgetSection()},
      {'key': _contatoKey, 'widget': const ContactsSection()},
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: HeaderWidget(
          onNavigate: (key) => _scrollToSection(key),
          menuItems: menuItems,
        ),
      ),
      body: Consumer<AppState>(builder: (context, appState, child) {
        if (appState.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.pretoT,
            ),
          );
        } else {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/bgImage.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
              ),
              SingleChildScrollView(
                child: SectionsWidget(sections: sections),
              ),
            ],
          );
        }
      }),
    );
  }
}
