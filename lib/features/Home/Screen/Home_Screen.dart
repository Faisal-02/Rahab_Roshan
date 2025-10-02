import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/Home/widget/tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                    borderRadius: BorderRadius.circular(6.r),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Expanded(child: CustomTabBarPage()),
          ],
        ),
      ),
    );
  }
}
