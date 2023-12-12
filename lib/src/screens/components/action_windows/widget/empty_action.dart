import 'package:dashed_rect/dashed_rect.dart';
import 'package:flutter/material.dart';

class EmptyAction extends StatelessWidget {
  const EmptyAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return DashedRect(
      gap: 6,
      strokeWidth: 1,
      color: Colors.grey,
      child: Container(
        height: _size.height * 0.6,
        width: _size.width,
        alignment: Alignment.center,
        child: Text(
          'Click edit button of any\nblock in the template.',
          textAlign: TextAlign.center,
          style: _textTheme.titleLarge?.copyWith(
            color: Colors.grey.withOpacity(0.4),
            letterSpacing: 4.75,
          ),
        ),
      ),
    );
  }
}
