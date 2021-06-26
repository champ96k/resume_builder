import 'package:flutter/material.dart';
import '../../../core/constants/constant_colors.dart';

class LoadingScreen extends StatelessWidget {
  final String loadingText;
  final Color circularProgressIndicatorColor;
  const LoadingScreen(
      {Key? key,
      this.loadingText = "Loading",
      this.circularProgressIndicatorColor = ConstantColors.primaryDarkBlue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: circularProgressIndicatorColor,
            ),
            const SizedBox(height: 16.0),
            Text(loadingText),
          ],
        ),
      ),
    );
  }
}
