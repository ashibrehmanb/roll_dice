import 'package:flutter/material.dart';
import 'dice_dot.dart';

class DiceFace extends StatelessWidget {
  const DiceFace({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    final List<List<Offset>> dotOffsets = [
      [], // Empty list for 0 value// Empty list for 1 value
      [const Offset(85, 85)], // Center dot for 2 value
      [
        const Offset(42.5, 42.5),
        const Offset(127.5, 127.5)
      ], // Top-left and bottom-right dots for 3 value
      [
        const Offset(42.5, 42.5),
        const Offset(127.5, 127.5),
        const Offset(85, 85)
      ], // Center dot and corner dots for 4 value
      [
        const Offset(42.5, 42.5),
        const Offset(127.5, 127.5),
        const Offset(42.5, 127.5),
        const Offset(127.5, 42.5)
      ], // Four corner dots for 5 value
      [
        const Offset(42.5, 42.5),
        const Offset(127.5, 127.5),
        const Offset(42.5, 127.5),
        const Offset(127.5, 42.5),
        const Offset(85, 85)
      ],
      [
        const Offset(42.5, 42.5),
        const Offset(127.5, 127.5),
        const Offset(42.5, 127.5),
        const Offset(127.5, 42.5),
        const Offset(127.5, 85),
        const Offset(42.5, 85)
      ], // Center dot and corner dots for 6 value
    ];

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
        ),
        for (final offset in dotOffsets[value])
          Positioned(
            left: offset.dx,
            top: offset.dy,
            child: const DiceDot(),
          ),
      ],
    );
  }
}
