import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:module_b_101/presentation/providers/oneboarding_provider.dart';

class OneboardingScreen extends StatelessWidget {
  const OneboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Image.asset('assets/images/LLSB_BI.png',
              width: MediaQuery.sizeOf(context).width * 0.3),
          const Spacer(),
          AspectRatio(
            aspectRatio: oneboardingProvider.videoController.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(oneboardingProvider.videoController),
                VideoPlayer(oneboardingProvider.)
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
