import 'package:flutter/material.dart';
import 'package:rehab_roshan_project/features/arena/widget/custom_card.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';

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
      child: Column(
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
          TabBar(
            dividerColor: Colors.transparent,
            labelPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 28),
            labelStyle: context.titleMedium!.copyWith(
              color: AppColors.primaryOneNormal,
            ),
            unselectedLabelStyle: context.bodySmall!.copyWith(
              color: AppColors.naturalDarker,
            ),

            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              color: Colors.transparent,
            ),
            tabAlignment: TabAlignment.center,
            isScrollable: true,

            tabs: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primaryOneLight,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primaryOneDark),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/all_elements_tab_icon.png",
                      ),
                    ),

                    Positioned(bottom: -40, child: Tab(text: "الكل")),
                  ],
                ),
              ),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.naturalNormal,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(style: BorderStyle.none),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/secondary_tabs_icons.png",
                      ),
                    ),

                    Positioned(bottom: -40, child: Tab(text: "رياضي")),
                  ],
                ),
              ),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.naturalNormal,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(style: BorderStyle.none),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/secondary_tabs_icons.png",
                      ),
                    ),

                    Positioned(bottom: -40, child: Tab(text: "ثقافي")),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.naturalNormal,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(style: BorderStyle.none),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/secondary_tabs_icons.png",
                      ),
                    ),

                    Positioned(bottom: -40, child: Tab(text: "ذهني")),
                  ],
                ),
              ),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.naturalNormal,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(style: BorderStyle.none),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/secondary_tabs_icons.png",
                      ),
                    ),

                    Positioned(bottom: -40, child: Tab(text: "حركي")),
                  ],
                ),
              ),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.naturalNormal,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(style: BorderStyle.none),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentGeometry.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/secondary_tabs_icons.png",
                      ),
                    ),

                    Positioned(bottom: -40, child: Tab(text: "حركي")),
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
                      titele: 'بطولة الشطرنج',
                      description:
                          'اختبر ذكاءك واستراتيجيتك في لعبة\nالتفكير الأولى عالميًا!',
                      image: 'assets/images/play1.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '00:50:00',
                    ),

                    CustomCard(
                      titele: "بطولة سباق القمة",
                      description:
                          "سباق مليء بالتشويق من البداية حتى \nآخر متر، واللقب ينتظر الأسرع",
                      image: "assets/images/marathon_event.jpg",
                      timerText: "06:00:00",
                    ),
                    CustomCard(
                      titele: 'بطولة المعرفة الوطنية',
                      description:
                          'قيس مدى معرفتك بتاريخ وطنك\nوإنجازاته في منافسة حماسية.',
                      image: 'assets/images/play3.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '30:00:00',
                    ),
                    CustomCard(
                      titele: 'بطولة التصوير الفوتوغرافي',
                      description:
                          'التقط أجمل لحظة بعدستك ونافس\nبإبداعك في عيون الحكّام والجمهور.',
                      image: 'assets/images/play4.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '54:00:00',
                    ),
                    CustomCard(
                      titele: 'بطولة البلوت',
                      description:
                          'أجواء تجمع اللاعبين على طاولة\nواحدة في اللعبة الأشهر بالسعودية.',
                      image: 'assets/images/play5.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '60:00:00',
                    ),
                    CustomCard(
                      titele: 'بطولة الرسم',
                      description:
                          'عبّر عن خيالك بالألوان وشاركنا\nإبداعك في لوحات تبهر الجميع.',
                      image: 'assets/images/play6.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '66:00:00',
                    ),
                    CustomCard(
                      titele: 'بطولة السباحة',
                      description:
                          'انطلق بقوة ونافس على اللقب في\nسباقات تجمع السرعة واللياقة.',
                      image: 'assets/images/play7.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '75:00:00',
                    ),
                    CustomCard(
                      titele: 'بطولة الفنون الشعبية',
                      description:
                          'عيش التراث من جديد وأبهر الحضور\nبأداء يعكس أصالة الفنون السعودية.',
                      image: 'assets/images/play8.jpg',
                      cardWidth: 164.5,
                      cardhiaght: 163,
                      timerhiaght: 29,
                      timerWidth: 67,
                      buttonWidth: 164.5,
                      buttonHeight: 25,
                      timerText: '79:00:00',
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
