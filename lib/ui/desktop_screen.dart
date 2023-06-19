import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website/generated/assets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(Assets.assetsPaintAnimation, width: 560),
            ],
          ),
        ),
        Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Hi!",
                    style: TextStyle(
                      fontFamily: "JetBrainsMono",
                      fontSize: 65,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => const LinearGradient(
                            colors: [Colors.blue, Colors.purpleAccent])
                        .createShader(bounds),
                    child: Text(
                      " I'm Parul Rathaur",
                      style: TextStyle(
                        fontFamily: "JetBrainsMono",
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ],
              ),
              Lottie.asset(Assets.assetsPaintAnimation, width: 560),
              Text(
                "I'm a passionate developer and artist!",
                style: TextStyle(
                  fontFamily: "SourceCodePro",
                  fontSize: 32,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Lottie.asset(
              Assets.assetsPandaAnimation,
              width: 500,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Lottie.asset(
            Assets.assetsBrushAnimation,
            repeat: false,
            width: 400,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 500,
              height: 320,
              child: Stack(
                children: [
                  Align(
                    child: Container(
                      width: 500,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 48,
                            offset: const Offset(-16, -16),
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 48,
                            offset: const Offset(16, 16),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Connect with Me",
                            style: TextStyle(
                              fontFamily: "Sen",
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          Wrap(
                            spacing: 10.0,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Material(
                                  color: Colors.transparent,
                                  child: IconButton(
                                    tooltip: "Visit My Youtube Channel",
                                    onPressed: () async {
                                      var url =
                                          "https://www.youtube.com/channel/UCILhQkMiO5-W29J3fkCsrwQ";
                                      if (await canLaunchUrlString(url)) {
                                        await launchUrlString(url);
                                      }
                                    },
                                    icon: Image.network(
                                        "https://img.icons8.com/fluency/48/youtube-play.png"),
                                    iconSize: 48,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Material(
                                  color: Colors.transparent,
                                  child: IconButton(
                                    tooltip: "Visit My Creations on Behance",
                                    onPressed: () async {
                                      var url =
                                          "https://www.behance.net/parulrathaur";
                                      if (await canLaunchUrlString(url)) {
                                        await launchUrlString(url);
                                      }
                                    },
                                    icon: Image.network(
                                        "https://img.icons8.com/ios-filled/48/behance.png"),
                                    iconSize: 48,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Material(
                                  color: Colors.transparent,
                                  child: IconButton(
                                    tooltip: "See My Projects on Github",
                                    onPressed: () async {
                                      var url = "https://github.com/codenarts";
                                      if (await canLaunchUrlString(url)) {
                                        await launchUrlString(url);
                                      }
                                    },
                                    icon: Image.network(
                                        "https://img.icons8.com/fluency/48/github.png"),
                                    iconSize: 48,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Material(
                                  color: Colors.transparent,
                                  child: IconButton(
                                    tooltip: "Visit Instagram Profile",
                                    onPressed: () async {
                                      var url =
                                          "https://www.instagram.com/curly_create/";
                                      if (await canLaunchUrlString(url)) {
                                        await launchUrlString(url);
                                      }
                                    },
                                    icon: Image.network(
                                        "https://img.icons8.com/fluency/48/instagram-new.png"),
                                    iconSize: 48,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        Assets.assetsProfileImage,
                        width: 75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
