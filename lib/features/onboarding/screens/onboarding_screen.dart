import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/onboarding/widgets/custom_buttons.dart';
import 'package:rehab_roshan_project/features/onboarding/widgets/custom_indicator.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {'image': 'assets/images/onboarding1.png',
      'text':"بطولاتنا بطابع مختلف",
  'subtext': "رياضية وثقافية وحركية وغيرها الكثير، فعاليات متنوعة  تناسب اهتمامات جميع أفراد مجتمع روشن"},
    {'image': 'assets/images/onboarding2.png',
      'text':"الميدان يا حميدان",
      'subtext': " كل البطولات في مكان واحد, اختر بطولتك, \n وخلك جزء من المنافسة"},
    {'image': 'assets/images/onboarding3.png',
     'text':"  الجوائز بانتظارك  ",
      'subtext':"شارك في البطولات, واصعد في الترتيب  \n واحصل على جوائز تعكس تميزك"},];

  @override
  Widget build(BuildContext context) {
   return Scaffold(  appBar: _currentPage != 0 // arrow Icone
       ? AppBar(
     backgroundColor: Colors.transparent,
     elevation: 0,
     leading: IconButton(
       icon: Icon(Icons.arrow_back),
       onPressed: () {
         _pageController.previousPage(
           duration: Duration(milliseconds: 300),
           curve: Curves.easeInOut,
         );
       },
     ),
   ) : null,
     body:Stack(
       alignment: Alignment.bottomCenter,
       children: [
         PageView.builder(
             controller: _pageController,
             itemCount: _pages.length,
             onPageChanged: (int page) {
               setState(() {
                 _currentPage = page;
               });},
             itemBuilder: (BuildContext context, int index){
               return ConstrainedBox(
                   constraints:BoxConstraints(maxHeight: 300.h) ,
                   child: Center(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset(
                           _pages[index]['image']!,
                           // height: 384.h,
                           // width: 384.w,
                           fit: BoxFit.contain,
                         ),
                         Text(
                           _pages[index]['text']!,
                           style:context.headlineLarge!.copyWith(color: AppColors.primaryOneNormalHover,
                           ),
                         ),
                         SizedBox(height:16),
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: 0),
                           child: Text(
                             _pages[index]['subtext']!,
                             style: context.bodyLarge!.copyWith(color: AppColors.naturalDarker),
                             textAlign: TextAlign.center,
                           ),
                         ) ,
                         SizedBox(height: 32.h),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CustomeIndicator(active: index==0,),
                             SizedBox(width: 9.w),
                             CustomeIndicator(active: index==1,),
                             SizedBox(width: 9.w),
                             CustomeIndicator(active: index==2,),
                           ],
                         ),
                         SizedBox(height: 50),

                       ],
                     ),
                   )
               );
             }
         ),
         Row(children: [
           SizedBox(height:39),
           Positioned(
            bottom: 50,
             child: CustomButtons(
                 currentPage: _currentPage,
                 totalPages: _pages.length,
                 pageController: _pageController
             ),
           )
         ],
         )

       ],
     )



   );
  }
}

