import 'package:flutter/material.dart';

class TatuagensSection extends StatefulWidget {
  const TatuagensSection({super.key});

  @override
  TatuagensSectionState createState() => TatuagensSectionState();
}

class TatuagensSectionState extends State<TatuagensSection> {
  final PageController pageController = PageController();
  int pageAtual = 0;

  final List<String> realismoTatto = [
    'lib/assets/tatto1.jpg',
    'lib/assets/tatto2.jpg',
    'lib/assets/tatto3.jpg',
    'lib/assets/tatto4.jpg',
    'lib/assets/tatto5.jpg',
    'lib/assets/tatto6.jpg',
    'lib/assets/tatto7.jpg',
    'lib/assets/tatto8.jpg',
    'lib/assets/tatto9.jpg',
    'lib/assets/tatto10.jpg',
    'lib/assets/tatto12.jpg',
    'lib/assets/tatto13.jpg',
  ];

  /// ############################################
  // Função que criei para mover as imagens // próxima página
  /// ############################################
  void _proxPage() {
    if (pageAtual < realismoTatto.length - 1) {
      pageAtual++;
      pageController.animateToPage(pageAtual,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  /// ############################################
  // Função que criei para mover as imagens // página anterior
  /// ############################################
  void anteriorPage() {
    if (pageAtual > 0) {
      pageAtual--;
      pageController.animateToPage(pageAtual,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }
  /// ############################################

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 1000,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red[200],
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: realismoTatto.length,
                      onPageChanged: (index) {
                        setState(() {
                          pageAtual = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            realismoTatto[index],
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green[200],
                    child: const Center(
                      child: Text(
                        'Área 2: Técnicas e Estilos',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 10,
              top: 80,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    size: 32, color: Colors.black),
                onPressed: anteriorPage,
              ),
            ),
            Positioned(
              right: 10,
              top: 80,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios,
                    size: 32, color: Colors.black),
                onPressed: _proxPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
