import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          height: 900,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red[200], // Cor de fundo
                  child: const Center(
                    child: Text(
                      'Área 1: Introdução',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green[200], // Cor de fundo
                  child: const Center(
                    child: Text(
                      'Área 2: Técnicas e Estilos',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue[200], // Cor de fundo
                  child: const Center(
                    child: Text(
                      'Área 3: Contato',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
