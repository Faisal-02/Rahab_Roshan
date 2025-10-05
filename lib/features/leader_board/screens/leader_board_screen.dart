import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/leader_board/controllers/nav_home_controller.dart';
import 'package:rehab_roshan_project/features/leader_board/widgets/participant_statistics.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class LeaderBoardScreen extends StatelessWidget {
  LeaderBoardScreen({super.key});

  final NavHomeController _navHomeController = NavHomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "قائمة المتصدرين لسباق القمة",
          style: context.displayLarge!.copyWith(color: AppColors.black_500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/images/winners_with_timer.png")],
            ),

            SizedBox(height: 14),
            Container(
              width: 370,
              height: 440,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.naturalNormal,
              ),
              child: ParticipantStatistics(),
            ),

            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsetsGeometry.fromLTRB(16, 0, 16, 32),

              child: ElevatedButton(
                onPressed: () {
                  _navHomeController.navHome(context);
                },
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsetsGeometry.all(10)),
                  minimumSize: WidgetStatePropertyAll(Size(370, 45)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(4),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    AppColors.primaryOneNormal,
                  ),
                ),
                child: Text(
                  "الرجوع الى الرئيسية",
                  style: context.bodyMedium!.copyWith(
                    color: AppColors.naturalLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
