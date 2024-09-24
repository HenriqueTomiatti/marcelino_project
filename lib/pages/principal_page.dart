import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_marcelino/pages/subpage/contatos.dart';
import 'package:portfolio_marcelino/pages/subpage/orcamento.dart';
import 'package:portfolio_marcelino/pages/subpage/sobre.dart';
import 'package:portfolio_marcelino/pages/subpage/tatuagens.dart';
import 'package:portfolio_marcelino/widget/hover_effect.dart';
import '../widget/hover_text_effect.dart';

class PrincipalPage extends StatelessWidget {
  PrincipalPage({super.key});

  /// ==============================================================
// final NavigationController navigationController;
// const PrincipalPage({super.key, required this.navigationController});
// final ScrollController _scrollController = ScrollController();
  /// ==============================================================

  Widget _navigateTo(String title, GlobalKey key) {
    return TextButton(
      onPressed: () {
        _scrollToSection(key);
        // navigationController.onItemTapped(index);
      },
      style: TextButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: HoverEffect(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
              style: GoogleFonts.playfairDisplay(
                  textStyle: const TextStyle(
                color: Color.fromARGB(179, 255, 255, 255),
                fontSize: 25,
              ))),
        ),
      ),
    );
  }

  final GlobalKey _sobreKey = GlobalKey();
  final GlobalKey _tatuagensKey = GlobalKey();
  final GlobalKey _orcamentoKey = GlobalKey();
  final GlobalKey _contatoKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        foregroundColor: Colors.black,
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(90, 8, 8, 8),
              child: HoverImage(
                  imagePath: 'lib/assets/LogoMarcelino.jpg',
                  height: 150,
                  width: 150),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.05, // 5% largura!!!!!!!!!!!!!
            ),
            _navigateTo("Sobre", _sobreKey),
            _navigateTo("Tatuagens", _tatuagensKey),
            _navigateTo("Orçamentos", _orcamentoKey),
            _navigateTo("Contatos", _contatoKey),
            const Spacer(),
          ],
        ),
      ),
      body: Stack(
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
            child: Column(
              children: [
                Padding(
                  key: _sobreKey,
                  padding: const EdgeInsets.all(16.0),
                  child: const SobreSection(),
                ),
                Padding(
                  key: _tatuagensKey,
                  padding: const EdgeInsets.all(16.0),
                  child: const TatuagensSection(),
                ),
                Padding(
                  key: _orcamentoKey,
                  padding: const EdgeInsets.all(16.0),
                  child: const OrcamentoSection(),
                ),
                Padding(
                  key: _contatoKey,
                  padding: const EdgeInsets.all(16.0),
                  child: const ContatosSection(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
