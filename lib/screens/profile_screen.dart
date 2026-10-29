import 'package:flutter/material.dart';
import 'package:skriptarnicaftn/services/assets_manager.dart';
import 'package:skriptarnicaftn/widgets/subtitle_text.dart';
import 'package:skriptarnicaftn/widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("${AssetsManager.imagePath}/logo.png"),
          ),
          title: const Text("Profile Screen"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TitlesTextWidget(
                    label: "Please login to have unlimited access"),
              ),
            ),
            Visibility(
              visible: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.surface,
                            width: 3),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/11/13/21/43/avatar-3814049_1280.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitlesTextWidget(label: "Masa Saranovic"),
                        SizedBox(height: 6),
                        SubtitleTextWidget(label: "masa.saranovic@uns.ac.rs")
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitlesTextWidget(label: "General"),
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {},
                    title: const SubtitleTextWidget(label: "All Orders"),
                    leading: Image.asset(
                        "${AssetsManager.imagePath}/bag/checkout.png",
                        height: 34),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
