import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'これはツールチップです',
      child: const Text('私にカーソルを合わせてください'),
    );
  }
}