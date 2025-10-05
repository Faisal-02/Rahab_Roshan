import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.titele,
    required this.description,
    required this.image,
    this.cardWidth = 180.5,
    this.cardhiaght = 281,

    this.timerhiaght = 29,
    this.timerWidth = 67,
    required this.timerText,
    this.isLiked = false,
    this.buttonWidth = 164.5,
    this.buttonHeight = 25,
    this.imageWidth = 164.5,
    this.imageHeight = 163,
    this.likeWidth = 44,
    this.likeHeight = 44,
  });

  final String titele;
  final String description;
  final String image;
  final double imageWidth;
  final double imageHeight;
  final double cardWidth;
  final double cardhiaght;
  final double timerWidth;
  final double timerhiaght;
  final double buttonWidth;
  final double buttonHeight;
  final String timerText;
  final bool isLiked;
  final double likeWidth;
  final double likeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardhiaght,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffFEFEFE),
        boxShadow: [
          BoxShadow(
            blurRadius: 52.9,
            color: Color(0xff000000).withValues(alpha: 0.04),
            offset: Offset(0, 13),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: imageWidth,
            height: imageHeight,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),

            child: Image.asset(image, fit: BoxFit.fill),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: timerWidth,
              height: timerhiaght,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.secondaryYellowLightActive,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    timerText,
                    style: context.titleSmall!.copyWith(
                      color: AppColors.secondaryNormal,
                    ),
                  ),

                  Positioned(
                    bottom: -113,
                    left: 0,
                    child: Image.asset(
                      width: likeWidth,
                      height: likeHeight,
                      "assets/images/fav_button.png",
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 60,
            right: 8,
            child: Text(
              titele,
              style: context.titleMedium!.copyWith(
                color: AppColors.secondaryNormal,
              ),
            ),
          ),

          Positioned(
            bottom: 32,
            right: 8,
            child: Text(
              description,
              style: context.labelMedium!.copyWith(
                color: AppColors.naturalDarkActive,
                fontSize: 10,
              ),
            ),
          ),

          Positioned(
            bottom: -12,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(buttonWidth, buttonHeight),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                backgroundColor: Color(0xFF5E5492),
              ),
              child: Text(
                "الانضمام للبطولة",
                style: context.titleMedium!.copyWith(color: Color(0xFFFEFEFE)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
