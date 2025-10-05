import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

class CustomCard extends StatelessWidget {
  final String titele;
  final String description;
  final String image;
  final double cardWidth;
  final double cardhiaght;
  final double timerWidth;
  final double timerhiaght;
  final double buttonWidth;
  final double buttonHeight;
  final String timerText; // timer number
  final bool isLiked;

  const CustomCard({
    super.key,
    required this.titele,
    required this.description,
    required this.image,
    required this.cardWidth,
    required this.cardhiaght,
    required this.timerhiaght,
    required this.timerWidth,
    required this.timerText,
    this.isLiked = false,
    required this.buttonWidth,
    required this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => PassDataShimmer(
      //         title: titele,
      //         image: image,
      //         description: description,
      //       ),
      //     ),
      //   );
      // },
      child: Container(
        width: cardWidth,
        height: cardhiaght,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xffFEFEFE),
        ),

        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),

                    ),
                    child: Image.asset(image, width: 164.5, height: 163,fit: BoxFit.fill,),


                  ),
                  Positioned(
                    bottom: 8.h,
                    left: 17.w,
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: Colors.black,
                        size: 24.sp,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      width: timerWidth,
                      height: timerhiaght,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xFFFCE1C4),
                      ),
                      child: Text(
                        timerText,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          fontFamily: 'IBMPlexSansArabic-Regular',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titele,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'IBMPlexSansArabic-Bold',
                      color: Color(0xFF0E2937),
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'IBMPlexSansArabic-Regular',
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(buttonWidth, buttonHeight),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                backgroundColor: Color(0xFF5E5492),
              ),
              child: Text(
                "الانضمام للبطولة",
                style: context.titleMedium!.copyWith(color: Color(0xFFFEFEFE)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
