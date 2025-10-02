import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/Arena//widget/custom_card.dart';

class CustomTabBarPage extends StatefulWidget {
  @override
  _CustomTabBarPageState createState() => _CustomTabBarPageState();
}

class _CustomTabBarPageState extends State<CustomTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("الفئات", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), Text("عرض الكل", style: TextStyle(color: Color(0xFF5E5492), fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            ButtonsTabBar(
              backgroundColor: Color(0xFFEFE6F4),
              unselectedBackgroundColor: Color(0xFFF5F5F5),
              labelStyle: TextStyle(color: Color(0xFF5E5492), fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(color: Color(0xFF565656)),
              borderColor: Color(0xFFD24C3E),
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
                      const Text("الكل", style: TextStyle(color: Color(0xFF5E5492),
                        ),
                      )
                    ],
                  ),
                ),

                Tab(child: Column(
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
                      const Text("رياضي", style: TextStyle(color: Color(0xFF5E5492),
                      ),
                      )
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
                      const Text("رياضي", style: TextStyle(color: Color(0xFF5E5492),
                      ),
                      )
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
                      const Text("رياضي", style: TextStyle(color: Color(0xFF5E5492),
                      ),
                      )
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
                      const Text("رياضي", style: TextStyle(color: Color(0xFF5E5492),
                      ),
                      )
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
                      const Text("رياضي", style: TextStyle(color: Color(0xFF5E5492),
                      ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
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
                      CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',),
                      CustomCard(titele: 'بطولة سباق القمة', description: 'سباق مليء بالتشويق من البداية حتى آخر متر، واللقب ينتظر الأسرع', image: 'assets/images/photo1.jpeg',)

                    ],),

                  // Sport Tab
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      // CustomCard(titel:'SAAD Cafe', imagePath: "assets/images/sadd.jpg", description: 'Offering artisan coffee in the AlUla Public Library', mael: 'Grab & go, light bites', reservations: 'Walk-ins welcome',),
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
                      // CustomCard(titel:'Dar Tantora The House Hotel', imagePath: "assets/images/dar-tantora-hero-.webp", description: 'Historically restored lodgings, authentically appointed and set within ancient mudbrick dwellings', mael: 'Available on-site', reservations: '',),
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
                      // CustomCard(titel:'Winter At Tantora', imagePath: "assets/images/Winter At Tantora.jpg", description: 'As the temperature cools, AlUla comes alive with the Winter At Tantora festival', mael: '', reservations: '',),
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
      ),
    );
  }
}























// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class ChipTabBarExample extends StatefulWidget {
//   @override
//   _ChipTabBarExampleState createState() => _ChipTabBarExampleState();
// }
//
// class _ChipTabBarExampleState extends State<ChipTabBarExample>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int _selectedIndex = 0;
//
//   final List<String> _tabs = ['الأول', 'الثاني', 'الثالث'];
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: _tabs.length, vsync: this);
//     _tabController.addListener(() {
//       setState(() {
//         _selectedIndex = _tabController.index;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 6,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('الفئات', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black,),),
//           backgroundColor: Colors.white,
//           elevation: 0,
//           centerTitle: false,
//           actions: [
//             TextButton(
//               onPressed: () {},
//               child: Text('عرض الكل', style: TextStyle(color: Color(0xFFD24C3E), fontSize: 14.sp,fontWeight: FontWeight.w400),
//               ),
//             ),
//           ],),
//
//       ),
//     );
//   }
// }
