import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;

  const HoverImage({
    super.key,
    required this.imagePath,
    this.width = 200,
    this.height = 200,
  });

  @override
  HoverImageState createState() => HoverImageState();
}

class HoverImageState extends State<HoverImage> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: _isHovering ? 0.7 : 1.0,
        child: Image.asset(
          widget.imagePath,
          width: widget.width,
          height: widget.height,
        ),
      ),
    );
  }
}
