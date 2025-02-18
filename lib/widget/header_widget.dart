import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_marcelino/widget/hover_text_effect.dart';
import '../widget/hover_effect.dart';

class HeaderWidget extends StatelessWidget {
  final Function(GlobalKey) onNavigate;
  final List<Map<String, dynamic>> menuItems;

  const HeaderWidget({
    super.key,
    required this.onNavigate,
    required this.menuItems,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      toolbarHeight: 150,
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      title: Row(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(90, 8, 8, 8),
            child: HoverImage(
              imagePath: 'lib/assets/LogoMarcelino.jpg',
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          ...menuItems
              .map((item) => _buildNavigateButton(item['title'], item['key'])),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildNavigateButton(String title, GlobalKey key) {
    return TextButton(
      onPressed: () => onNavigate(key),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
      ),
      child: HoverEffect(
        child: Text(
          title,
          style: GoogleFonts.playfairDisplay(
            textStyle: const TextStyle(
              color: Color.fromARGB(179, 255, 255, 255),
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
