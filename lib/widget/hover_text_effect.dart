import 'package:flutter/material.dart';

class HoverEffect extends StatefulWidget {
  final Widget child;
  final Color hoverColor;
  final double borderWidth;

  const HoverEffect({
    super.key,
    required this.child,
    this.hoverColor = const Color.fromARGB(255, 181, 148, 60),
    this.borderWidth = 2,
  });

  @override
  _HoverEffectState createState() => _HoverEffectState();
}

class _HoverEffectState extends State<HoverEffect> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _isHovering ? widget.hoverColor : Colors.transparent,
              width: widget.borderWidth,
            ),
          ),
        ),
        child: widget.child,
      ),
    );
  }

  void _setHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
