import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class EventDetailsThumbnailWidget extends StatelessWidget {
  const EventDetailsThumbnailWidget({super.key, required this.eventImagePath});

  final String eventImagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 402,
      height: 510,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // The event image
          Center(child: Image.asset(eventImagePath)),
          //This row only for the top section, timer and leave button.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Leave button
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset("assets/images/black_back_Icon.png"),
              ),
              SizedBox(width: 215),
              // Event timer
              Container(
                width: 111,
                height: 41,
                padding: EdgeInsets.all(6.11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.secondaryYellowLightActive,
                ),
                child: Center(
                  child: Text(
                    "00:00:00",
                    style: context.bodyLarge!.copyWith(
                      color: AppColors.secondaryNormal,
                    ),
                  ),
                ),
              ),
              SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
