import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:module_b_101/presentation/providers/oneboarding_provider.dart';

class OneboardingScreen extends StatefulWidget {
  const OneboardingScreen({super.key});

  @override
  State<OneboardingScreen> createState() => _OneboardingScreenState();
}

class _OneboardingScreenState extends State<OneboardingScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      oneboardingProvider.addListener(updateScreen);
      oneboardingProvider.initVideoController(context);
    });
  }

  @override
  void dispose() {
    oneboardingProvider.removeListener(updateScreen);
    super.dispose();
  }

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
              alignment: Alignment.bottomCenter,
              children: [
                VideoPlayer(oneboardingProvider.videoController),
                VideoProgressIndicator(
                  oneboardingProvider.videoController,
                  allowScrubbing: true,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      oneboardingProvider.toggleVideoPlay();
                    },
                    child: Icon(
                        oneboardingProvider.videoController.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow_rounded),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GestureDetector(
              onTap: () {
                oneboardingProvider.navigateToHomeScreen(context);
              },
              child: Container(
                height: 46,
                width: double.infinity,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  '홈으로',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
