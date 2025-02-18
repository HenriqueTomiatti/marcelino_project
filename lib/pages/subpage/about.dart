import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_marcelino/constants/app_colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 22),
      child: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Olá, meu nome é Roberto Marcelino!',
                      textStyle: GoogleFonts.playfairDisplay(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w900,
                        color: AppColors.pretoT,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
                const SizedBox(height: 10),
                Text(
                  'Conhecido como “Marcelino Tattoo”, sou um tatuador profissional especializado em ',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    color: AppColors.pretoT,
                    fontWeight: FontWeight.w800,
                    height: 1.6,
                  ),
                ),
                Text(
                  'realismo e coberturas.',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.pretoT,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Apaixonado por arte desde criança, transformo histórias e memórias em tatuagens',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.pretoT,
                    height: 1.6,
                  ),
                ),
                Text(
                  'únicas e significativas. Com foco em entender os desejos de cada cliente, crio obras de arte personalizadas que marcam vidas.',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.pretoT,
                    height: 1.6,
                  ),
                ),
                Text(
                  'Se você busca uma tatuagem única e bem executada, entre em contato e transforme suas ideias em realidade!',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.pretoT,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
