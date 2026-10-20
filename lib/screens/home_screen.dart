import 'package:flutter/material.dart';
import 'package:skriptarnicaftn/widgets/subtitle_text.dart';
import 'package:skriptarnicaftn/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SubtitleTextWidget(label: "Subtitle"),
          TitlesTextWidget(label: "Title")
        ],
      ),
    ));
  }
}
