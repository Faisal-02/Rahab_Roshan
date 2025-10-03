import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/home/controllers/champion_platform_controller.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';

class WinnersPlatformWidget extends StatefulWidget {
  const WinnersPlatformWidget({super.key});

  @override
  State<WinnersPlatformWidget> createState() => _WinnersPlatformWidgetState();
}

class _WinnersPlatformWidgetState extends State<WinnersPlatformWidget> {
  final ChampionPlatformController _platformController =
      ChampionPlatformController();
  int currentWinnersIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 300,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // TODO use AppColors class.
            color: Color(0xffF7F7F7),
          ),
          child: Image.asset("assets/images/winners_platform.png"),
        ),

        // Champoionship Winner page view
        SizedBox(
          width: 370,
          height: 300,
          child: PageView.builder(
            itemCount: _platformController.winnersList.length,
            controller: PageController(),
            reverse: true,
            onPageChanged: (value) {
              currentWinnersIndex = value;
              setState(() {});
            },
            itemBuilder: (BuildContext ctx, int index) {
              return Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 140,
                    child: InkWell(
                      onTap: () {
                        if (currentWinnersIndex == 0) {
                          currentWinnersIndex++;
                          setState(() {});
                        }
                      },
                      child: Image.asset("assets/images/backword_Icon.png"),
                    ),
                  ),

                  Positioned(
                    right: 10,
                    bottom: 140,
                    child: InkWell(
                      onTap: () {
                        if (currentWinnersIndex == 1) {
                          currentWinnersIndex--;
                          setState(() {});
                        }
                      },
                      child: Image.asset("assets/images/forward_Icon.png"),
                    ),
                  ),
                  currentWinnersIndex == 0
                      ? Stack(
                          children: [
                            // The champoinship name position
                            Positioned(
                              right: 12,
                              top: 12,
                              child: Text(
                                currentWinnersIndex == 1
                                    ? "بطولة كرة القدم"
                                    : "بطولة سباق القمة",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(color: AppColors.secondaryNormal),
                              ),
                            ),
                            Positioned(
                              left: 165.2,
                              right: 161.76,
                              top: 51.11,
                              bottom: 205.85,
                              child: SizedBox(
                                child: _platformController
                                    .winnersList[currentWinnersIndex]["1"],
                              ),
                            ),
                            Positioned(
                              left: 55.84,
                              right: 271.13,
                              top: 100.99,
                              bottom: 155.97,
                              child: SizedBox(
                                child: _platformController
                                    .winnersList[currentWinnersIndex]["2"],
                              ),
                            ),
                            Positioned(
                              left: 272,
                              right: 54.96,
                              top: 118.99,
                              bottom: 137.97,
                              child: SizedBox(
                                child: _platformController
                                    .winnersList[currentWinnersIndex]["3"],
                              ),
                            ),
                          ],
                        )
                      : Stack(
                          children: [
                            // The champoinship name position
                            Positioned(
                              right: 12,
                              top: 12,
                              child: Text(
                                currentWinnersIndex == 1
                                    ? "بطولة كرة القدم"
                                    : "بطولة سباق القمة",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(color: AppColors.secondaryNormal),
                              ),
                            ),
                            Positioned(
                              left: 165.2,
                              right: 161.76,
                              top: 51.11,
                              bottom: 205.85,
                              child: SizedBox(
                                child: _platformController
                                    .winnersList[currentWinnersIndex]["1"],
                              ),
                            ),
                            Positioned(
                              left: 55.84,
                              right: 271.13,
                              top: 100.99,
                              bottom: 155.97,
                              child: SizedBox(
                                child: _platformController
                                    .winnersList[currentWinnersIndex]["2"],
                              ),
                            ),
                            Positioned(
                              left: 272,
                              right: 54.96,
                              top: 118.99,
                              bottom: 137.97,
                              child: SizedBox(
                                child: _platformController
                                    .winnersList[currentWinnersIndex]["3"],
                              ),
                            ),
                          ],
                        ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
