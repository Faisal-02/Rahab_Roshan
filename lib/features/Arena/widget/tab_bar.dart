import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/arena/widget/custom_card.dart';

class CustomTabBarPage extends StatefulWidget {
  const CustomTabBarPage({super.key});

  @override
  _CustomTabBarPageState createState() => _CustomTabBarPageState();
}
class _CustomTabBarPageState extends State<CustomTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الفئات",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "عرض الكل",
                    style: TextStyle(
                      color: Color(0xFF5E5492),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ButtonsTabBar(
              backgroundColor: Color(0xFFEFE6F4),
              unselectedBackgroundColor: Color(0xFFF5F5F5),
              labelStyle: TextStyle(
                color: Color(0xFF5E5492),
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(color: Color(0xFF565656)),
              borderColor: Color(0xFF585492),
              borderWidth: 1,
              radius: 16,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              // height: 60.h,
              height: 60,
              tabs: [
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFE6F4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xFF5E5492),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "الكل",
                        style: TextStyle(color: Color(0xFF5E5492)),
                      ),
                    ],
                  ),
                ),

                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFE6F4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xFF5E5492),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "رياضي",
                        style: TextStyle(color: Color(0xFF5E5492)),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFE6F4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xFF5E5492),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "رياضي",
                        style: TextStyle(color: Color(0xFF5E5492)),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFE6F4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xFF5E5492),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "رياضي",
                        style: TextStyle(color: Color(0xFF5E5492)),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFE6F4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xFF5E5492),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "رياضي",
                        style: TextStyle(color: Color(0xFF5E5492)),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFE6F4),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.menu_rounded,
                            color: Color(0xFF5E5492),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      const Text(
                        "رياضي",
                        style: TextStyle(color: Color(0xFF5E5492)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: IndexedStack(
                // index: selectedIndex,
                children: [
                  // ALL Tab
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      CustomCard(
                        titele: 'بطولة سباق القمة',
                        description:
                            'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع',
                        image: 'assets/images/photo1.jpeg',
                        cardWidth: 164.5,
                        cardhiaght: 163,
                        timerhiaght: 29.h,
                        timerWidth: 67.w,
                        buttonWidth: 164.5,
                        buttonHeight: 25,
                        timerText: '00:50:00',
                      ),
                      CustomCard(
                        titele: 'بطولة سباق القمة',
                        description:
                            'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع',
                        image: 'assets/images/photo1.jpeg',
                        cardWidth: 164.5,
                        cardhiaght: 163,
                        timerhiaght: 29.h,
                        timerWidth: 67.w,
                        buttonWidth: 164.5,
                        buttonHeight: 25,
                        timerText: '06:00:00',
                      ),
                      CustomCard(
                        titele: 'بطولة سباق القمة',
                        description:
                            'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع',
                        image: 'assets/images/photo1.jpeg',
                        cardWidth: 164.5,
                        cardhiaght: 163,
                        timerhiaght: 29.h,
                        timerWidth: 67.w,
                        buttonWidth: 164.5,
                        buttonHeight: 25,
                        timerText: '30:00:00',
                      ),
                      CustomCard(
                        titele: 'بطولة سباق القمة',
                        description:
                            'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع',
                        image: 'assets/images/photo1.jpeg',
                        cardWidth: 164.5,
                        cardhiaght: 163,
                        timerhiaght: 29.h,
                        timerWidth: 67.w,
                        buttonWidth: 164.5,
                        buttonHeight: 25,
                        timerText: '54:00:00',
                      ),
                      CustomCard(
                        titele: 'بطولة سباق القمة',
                        description:
                            'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع',
                        image: 'assets/images/photo1.jpeg',
                        cardWidth: 164.5,
                        cardhiaght: 163,
                        timerhiaght: 29.h,
                        timerWidth: 67.w,
                        buttonWidth: 164.5,
                        buttonHeight: 25,
                        timerText: '60:00:00',
                      ),
                      CustomCard(
                        titele: 'بطولة سباق القمة',
                        description:
                            'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع',
                        image: 'assets/images/photo1.jpeg',
                        cardWidth: 164.5,
                        cardhiaght: 163,
                        timerhiaght: 29.h,
                        timerWidth: 67.w,
                        buttonWidth: 164.5,
                        buttonHeight: 25,
                        timerText: '66:00:00',
                      ),
                    ],
                  ),

                  // Sport Tab
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      // CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      // CustomCard(titel:'Dunkin', imagePath: "assets/images/dunk.jpg", description: 'World-famous coffee and donut spot', mael: 'Grab & go, light bite', reservations: 'Walk-ins welcome',),
                      // CustomCard(titel:'Out of Line', imagePath: "assets/images/out-ofwebp.webp", description: 'Freshly baked goods and quality coffee in a newly-restored home', mael: 'Breakfast, lunch,', reservations: 'Walk-ins welcome',),
                      // CustomCard(titel:'Archi Cafe', imagePath: "assets/images/artchy.jpg", description: 'Freshly baked goods and quality coffee in a newly-restored home', mael: 'Breakfast, lunch,', reservations: 'Walk-ins welcome',)
                    ],
                  ),
                  // Sport Tab
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      // CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      // CustomCard(titel:'Our Habitas AlUla', imagePath: "assets/images/habitas-alula.webp", description: 'A sustainable desert resort combining luxury, well-being, and human connection', mael: 'Available on-site', reservations: '',),
                      // CustomCard(titel:'Cloud7 Residence', imagePath: "assets/images/cloud7.webp", description: 'A sustainable desert resort combining luxury, well-being, and human connection', mael: '', reservations: '',),
                      // CustomCard(titel:'Shaden Resort', imagePath: "assets/images/shadeen.webp", description: 'A sustainable desert resort combining luxury, well-being, and human connection', mael: '', reservations: '',)
                    ],
                  ),
                  // Sport Tab
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      // CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      // CustomCard(titel:'Maraya', imagePath: "assets/images/WhatsApp Image .jpg", description: 'Maraya is an architectural wonder that has quickly reached icon status', mael: '', reservations: '',),
                      // CustomCard(titel:'Elephant Rock', imagePath: "assets/images/aelf.jpg", description: 'A true icon of AlUla, the elephant shaped rock formation stretches up 52 metres into the sky', mael: '', reservations: '',),
                      // CustomCard(titel:'AlUla Hot Air Balloons', imagePath: "assets/images/hot-air-balloon-hero-02.webp", description: 'Take in the glory of AlUla 1,200 metres up in the air with an unforgettable experience', mael: '', reservations: '3 hours',)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
