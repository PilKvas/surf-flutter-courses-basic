import 'dart:math';

import 'package:flutter/material.dart';

class GestureMasterWidget extends StatefulWidget {
  const GestureMasterWidget({super.key});

  @override
  _GestureMasterWidgetState createState() => _GestureMasterWidgetState();
}

class _GestureMasterWidgetState extends State<GestureMasterWidget> {
  Offset _position = const Offset(0, 0);
  double _rotation = 0.0;
  double _size = 200.0;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _color =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
              });
            },
            onLongPress: () {
              setState(() {
                _rotation += 1;
              });
            },
            onDoubleTap: () {
              setState(() {
                _size += 100.0;
              });
            },
          ),
        ),
        Positioned(
          left:
              MediaQuery.of(context).size.width / 2 - _size / 2 + _position.dx,
          top:
              MediaQuery.of(context).size.height / 2 - _size / 2 + _position.dy,
          child: GestureDetector(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _size,
              height: _size,
              color: _color,
              transform: Matrix4.rotationZ(_rotation),
              child: const Center(
                child: Text(
                  'Drag, Tap, Long Press',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            onPanUpdate: (details) {
              setState(() {
                _position += details.delta;
              });
            },
            onTap: () {
              setState(() {
                _color = _color == Colors.blue ? Colors.red : Colors.blue;
              });
            },
          ),
        ),
      ],
    );
  }
}
