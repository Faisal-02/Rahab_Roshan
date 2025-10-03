 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehab_roshan_project/features/pre_challenge/widgets/pre%20_%20conditions.dart';
import 'package:rehab_roshan_project/style/colors/light_mode_colors/app_colors.dart';
import 'package:rehab_roshan_project/style/ctx.dart';
class Prechallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("بطولة سباق القمة ",style: context.displayLarge,),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("الوقت المتبقي على بدء البطولة",style: context.bodyMedium!.copyWith(color: AppColors.secondaryNormal),),
          SizedBox(height: 12),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.83),
          // padding: EdgeInsets.all(15.83),
          width: 346.w,
          height: 62.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xFFFCE1C4),
          ),
            child: Text("00 : 00 : 04", textDirection: TextDirection.ltr,), alignment: Alignment.center,),
              SizedBox(height:12),
              Align(
                alignment: Alignment.center,
                child: Text("استعد للانطلاق… العد التنازلي بدأ! 😍", style: context.bodySmall!.copyWith(color: AppColors.secondaryNormal),),),
              SizedBox(height: 14),
              Text("باركود البطولة",style: context.displayLarge!.copyWith(color: AppColors.secondaryNormal),),
              SizedBox(height: 14),
              Padding(
                padding: EdgeInsets.only(top: 40,bottom: 40),
                  child: Image.asset("assets/images/Frame 1610068467.png",/*width: 370.w,height: 43.h,*/)),
              Text("شروط البطولة",style: context.displayLarge!.copyWith(color: AppColors.secondaryNormal),),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pre_conditions(nummber: '1', rols: ' المشي لمسافة 2 كيلومتر كاملة',),
                  SizedBox(width: 8.w),
                  Pre_conditions(nummber: '2', rols: '  الالتزام بالمرور على المسار المحدد بالكامل',),
                  SizedBox(width: 8.w),
                  Pre_conditions(nummber: '3', rols: ' تجميع 4 عناصر افتراضية (AR) عبر التطبيق أثناء المشي',),
                ],
              ),
              Text("مسار البطولة",style: context.displayLarge!.copyWith(color: AppColors.secondaryNormal),),
              SizedBox(height: 10),
              Image.asset("assets/images/mab.png"),
              SizedBox(height: 13),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(370.w, 51.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  backgroundColor: Color(0xFF5E5492),
                ),
                child: Text(
                  "بدء السباق", style: context.displayLarge!.copyWith(color:AppColors.naturalLight),
                ),
              ),            ],
          ),
        ),
      ),
      );
  }

}