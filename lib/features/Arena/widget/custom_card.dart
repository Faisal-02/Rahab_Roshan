import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCard extends StatelessWidget {
  final String titele;
  final String description;
  final String image;
  const CustomCard({
    super.key,
    required this.titele,
    required this.description,
    required this.image,
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
        width: 181,
        height: 281,
        child: Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(image, width:165, height: 163,
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(12),
                  child: Center(
                    child:
                    Text(titele,style: TextStyle(fontSize: 15, fontFamily: 'IBMPlexSansArabic-Bold', color: Color(0xFF0E2937)
                      ),),

                  ),
                ),
              ),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)) ,
                    backgroundColor: Color(0xFF5E5492),
                  ),
                  child: Text("انضم للبطولة",style: TextStyle(color: Color(0xFFFEFEFE),fontFamily:'IBMPlexSansArabic-Regular',fontWeight: FontWeight.w400 ,fontSize: 14.sp),))

              ],
          ),
        ),
      ),
    );
  }
}