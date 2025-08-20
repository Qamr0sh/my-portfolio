import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../Resources/app_colors.dart';
import '../../Resources/app_icons.dart';
import '../../Resources/app_images.dart';
import '../../Resources/app_theme.dart';
import '../Widgets/custom_button.dart';
import 'dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 🔹 First Section - Hero / Intro
            SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: _buildHeroSection(screenWidth, screenHeight),
            ),

            /// 🔹 Second Section - About
            Container(
              width: screenWidth,
              height: screenHeight,
              color: AppColors.primaryBackground,
              child: _buildMaintenance(screenWidth, screenHeight),
            ),

            // /// 🔹 Second Section - About
            // Container(
            //   width: screenWidth,
            //   height: screenHeight,
            //   color: AppColors.primaryBackground,
            //   child: _buildAboutSection(screenWidth, screenHeight),
            // ),
            //
            // /// 🔹 Second Section - About
            // Container(
            //   width: screenWidth,
            //   height: screenHeight,
            //   color: AppColors.primaryBackground,
            //   child: _buildAboutSection(screenWidth, screenHeight),
            // ),
            //
            // /// 🔹 Third Section - Skills
            // Container(
            //   width: screenWidth,
            //   height: screenHeight,
            //   color: Colors.white,
            //   child: _buildSkillsSection(screenWidth, screenHeight),
            // ),
          ],
        ),
      ),
    );
  }

  /// ================= Maintenance Section ============
  Widget _buildMaintenance(double screenWidth, double screenHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: Center(
        child:  Text("Site is Under Development...", style: appTheme.textTheme.headlineLarge),
      ),
    );
  }


  /// ================= HERO SECTION =================
  Widget _buildHeroSection(double screenWidth, double screenHeight) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.03),
            appBar(),

            SizedBox(height: screenHeight * 0.25),

            /// Small Intro Line
            Row(
              children: [
                SizedBox(width: screenWidth * 0.2),
                Container(width: 15, height: 1, color: AppColors.black),
                SizedBox(width: 5),
                Text("HELLO", style: appTheme.textTheme.bodyMedium),
              ],
            ),

            /// Name
            Row(
              children: [
                SizedBox(width: screenWidth * 0.2),
                Text("I'm ", style: appTheme.textTheme.headlineLarge),
                Text(
                  'Qamrosh ',
                  style: appTheme.textTheme.headlineLarge?.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Text("Ali Nazar", style: appTheme.textTheme.headlineLarge),
              ],
            ),

            /// Animated Roles
            Row(
              children: [
                SizedBox(width: screenWidth * 0.2),
                DefaultTextStyle(
                  style: appTheme.textTheme.headlineMedium ?? const TextStyle(),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('A Software Engineer '),
                      TypewriterAnimatedText('A Graphic Designer '),
                      TypewriterAnimatedText('A Tech Lover '),
                      TypewriterAnimatedText('A Creative Problem Solver '),
                      TypewriterAnimatedText('A Flutter Developer '),
                      TypewriterAnimatedText('An IoT Enthusiast '),
                      TypewriterAnimatedText('An Electronics Hobbyist '),
                      TypewriterAnimatedText('A Gamer '),
                      TypewriterAnimatedText('A Full-Stack Explorer '),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
              ],
            ),

            /// Tagline
            Row(
              children: [
                SizedBox(width: screenWidth * 0.2),
                SizedBox(
                  width: screenWidth * 0.4,
                  child: Text(
                    "Inspired to create and innovate every day.",
                    style: appTheme.textTheme.bodyMedium,
                    softWrap: true,
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.05),

            /// Resume Button
            Row(
              children: [
                SizedBox(width: screenWidth * 0.2),
                CustomButton(text: "Download Resume", onPressed: (){})
              ],
            ),

            const Spacer(),

            /// Social Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: screenWidth * 0.1),
                _buildIcon(CustomIcons.discordIcon, screenWidth),
                const SizedBox(width: 10),
                _buildIcon(CustomIcons.facebookIcon, screenWidth),
                const SizedBox(width: 10),
                _buildIcon(CustomIcons.instagramIcon, screenWidth),
                const SizedBox(width: 10),
                _buildIcon(CustomIcons.linkedInIcon, screenWidth),
                const SizedBox(width: 10),
                _buildIcon(CustomIcons.pinterestIcon, screenWidth),
                const SizedBox(width: 10),
                _buildIcon(CustomIcons.telegramIcon, screenWidth),
                const SizedBox(width: 10),
                _buildIcon(CustomIcons.whatsappIcon, screenWidth),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
          ],
        ),
        Positioned(
          right: Get.width * 0.05,
          bottom: 0,
          child: Image.asset(
            CustomImages.imageSection1,
            width: screenWidth * 0.4,
          ),
        ),

        Positioned(
          right: 0,
          bottom: screenHeight*0.1,
          child:Transform.rotate(
              angle: 90 * 3.1415926535 / 180, // 90 degrees in radians
              child: Row(
                children: [
                  Text(
                    "Scroll Down",
                    style: appTheme.textTheme.bodyMedium,
                  ),
                ],
              )
          ),
        ),

        Positioned(
            left: screenWidth*0.5,
            top: screenHeight*0.3,
            child: Container(
          width: screenWidth * 0.03,
          height: screenWidth * 0.03,
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.2),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.professionalGray.withOpacity(0.2),
                blurRadius: 100,
                spreadRadius: 10,
                offset: Offset(-40, 60),
              ),
            ],
          ),
        )
        )

      ],
    );
  }

  /// ================= ABOUT SECTION =================
  Widget _buildAboutSection(double screenWidth, double screenHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.1),
          Text("About Me", style: appTheme.textTheme.headlineLarge),
          const SizedBox(height: 20),
          Text(
            "I am a passionate Flutter Developer and tech enthusiast. "
            "I enjoy building smart solutions, exploring IoT, and working with modern tools "
            "to solve real-world problems with creativity and innovation.",
            style: appTheme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  /// ================= SKILLS SECTION =================
  Widget _buildSkillsSection(double screenWidth, double screenHeight) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.1),
          Text("Skills", style: appTheme.textTheme.headlineLarge),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              Chip(label: Text("Flutter")),
              Chip(label: Text("Dart")),
              Chip(label: Text("Python")),
              Chip(label: Text("IoT / ESP32")),
              Chip(label: Text("Networks")),
              Chip(label: Text("Full-Stack Development")),
            ],
          ),
        ],
      ),
    );
  }
}

/// ================= SOCIAL ICON BUILDER =================
Widget _buildIcon(String asset, double screenWidth) {
  double size = screenWidth * 0.01;
  var isHovered = false.obs;

  return Obx(
    () => MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: AnimatedScale(
        scale: isHovered.value ? 1.5 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isHovered.value
                ? Colors.blue.withOpacity(0.1)
                : Colors.transparent,
          ),
          padding: const EdgeInsets.all(6),
          child: SvgPicture.asset(
            asset,
            width: size,
            height: size,
            colorFilter: isHovered.value
                ? const ColorFilter.mode(Colors.blue, BlendMode.srcIn)
                : null,
          ),
        ),
      ),
    ),
  );
}

/// ================= APP BAR =================
Widget appBar() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
    child: Row(
      children: [
        SvgPicture.asset(
          CustomIcons.typographicLogo,
          color: AppColors.primaryColor,
          width: Get.width * 0.05,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _navItem("Home", AppColors.primaryColor),
            _navItem("About", null),
            _navItem("Skills", null),
            _navItem("Projects", null),
            _navItem("Contact", null),
          ],
        ),
        const Spacer(),
        Text(
          "ENG",
          style: appTheme.textTheme.bodyMedium?.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    ),
  );
}

Widget _navItem(String text, Color? color) {
  return SizedBox(
    width: Get.width * 0.06,
    child: Text(
      text,
      style: appTheme.textTheme.bodyMedium?.copyWith(
        color: color ?? Colors.black,
      ),
    ),
  );
}
