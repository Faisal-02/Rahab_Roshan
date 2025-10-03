



// Stack(
//       children: [
//         Container(
//           width: 111.w,
//           height: 68.h,
//           decoration: BoxDecoration(
//             color: color,
//             borderRadius: BorderRadius.circular(8.r),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "المرتبة",
//                   style: TextStyle(color: AppColors.naturalLight),
//                 ),
//                 Image.asset(
//                   "assets/images/community_map.png",
//                   width: 36.5.w,
//                   height: 36.5.h,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 280.w, //305.w,
//               height: 77.h, //68.h
//               decoration: BoxDecoration(
//                 color: AppColors.naturalNormal,
//                 borderRadius: BorderRadius.circular(8.r),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 12),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       titele,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 16.sp,
//                         fontFamily: 'IBMPlexSansArabic-Bold',
//                       ),
//                     ),
//                     Text(
//                       subtitel,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontFamily: 'IBMPlexSansArabic-Regular',
//                         fontSize: 14.sp,
//                         color: AppColors.naturalDarkHover,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Icon(Icons.chevron_right, color: Colors.grey, size: 24.w),
//           ],
//         ),
//       ],
//     );