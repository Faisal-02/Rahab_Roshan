import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/Arena//widget/tab_bar.dart';

class ArenaScreen extends StatefulWidget {
  @override
  State<ArenaScreen> createState() => _ArenaScreenState();
}

class _ArenaScreenState extends State<ArenaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الميدان",
          style: TextStyle(
            fontFamily: 'IBMPlexSansArabic-Bold',
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 16.h),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "ابحث هنا",
                        hintStyle: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xFFB8B8B8),
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        suffixIcon: Image.asset(
                          "assets/images/mic-01.png",
                          color: Color(0xFFB8B8B8),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF565656)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF6A5ACD),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.menu, color: Colors.white, size: 28.w),
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 8.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: CustomTabBarPage()),
          ],
        ),
      ),
    );
  }
}
