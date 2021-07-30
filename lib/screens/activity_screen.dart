import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 38.h, left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAppBar(),
                SizedBox(
                  height: 34.h,
                ),
                Text(
                  "Activity",
                  style: GoogleFonts.lato(
                      fontSize: 30.sp,
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w900),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Here is the Data of your Cards",
                      style: GoogleFonts.lato(
                          fontSize: 12.sp,
                          color: Colors.black38,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                        "assets/images/circle_user.svg",
                        width: 34.w,
                        height: 34.h,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 56.h,
                ),
                buildDaysList(),
                SizedBox(
                  height: 29.h,
                ),
                buildStatsList(),
                SizedBox(height: 29.h),
                buildCreditCartDetails(),
                SizedBox(height: 28.h),
              ],
            ),
          ),
          buildCurves(size),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }

  Stack buildCurves(Size size) {
    return Stack(
      children: [
        SvgPicture.asset(
          "assets/images/curves.svg",
          width: size.width,
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 85.w, top: 5.h, right: 5.w),
              child: Container(
                width: 92.w,
                height: 70.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffd9d9d9), width: 1.w),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Income",
                      style: GoogleFonts.lato(
                          fontSize: 14.sp,
                          letterSpacing: 0.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4 000",
                          style: GoogleFonts.lato(
                              fontSize: 12.sp,
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          " €",
                          style: GoogleFonts.lato(
                              fontSize: 12.sp,
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SvgPicture.asset(
              "assets/images/close.svg",
              width: 24.w,
              height: 24.h,
            )
          ],
        ),
      ],
    );
  }

  Row buildDaysList() {
    return Row(
      children: [
        buildDayTile("02", "Mon"),
        SizedBox(width: 13.w,),
        buildDayTile("03", "Tue", false, true),
          SizedBox(width: 13.w,),
        buildDayTile("04", "Wed", true),
        SizedBox(width: 13.w,),
        buildDayTile("05", "Thu"),
        SizedBox(width: 13.w,),
        buildDayTile("06", "Fri")
      ],
    );
  }

  Row buildAppBar() {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/images/arrow_back_2.svg",
          width: 24.w,
          height: 24.h,
        ),
        SizedBox(width: 238.w),
        SvgPicture.asset(
          "assets/images/search.svg",
          color: Color(0xffbfbfbf),
          width: 18.w,
          height: 18.h,
        ),
        SizedBox(width: 27.w),
        SvgPicture.asset(
          "assets/images/nav.svg",
          color: Color(0xffbfbfbf),
          width: 18.w,
          height: 18.h,
        )
      ],
    );
  }

  SingleChildScrollView buildCreditCartDetails() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 28.h,
            width: 56.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff333b49), Color(0xff465064)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Center(
              child: Text(
                "All",
                style: GoogleFonts.lato(
                    fontSize: 11.sp,
                    letterSpacing: 0.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Transform.rotate(
            alignment: Alignment.center,
            angle: 270 * pi / 180,
            child: SvgPicture.asset("assets/images/arrow_down_2.svg",
                width: 10.w, height: 10.h, color: Colors.black),
          ),
          SizedBox(
            width: 27.w,
          ),
          Text(
            "Day",
            style: GoogleFonts.lato(
              fontSize: 11.sp,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            "Week",
            style: GoogleFonts.lato(
              fontSize: 11.sp,
              color: Colors.black45,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 45.w,
          ),
          SvgPicture.asset("assets/images/mastercard.svg",
              width: 18.w, height: 18.h),
          SizedBox(
            width: 7.w,
          ),
          SvgPicture.asset("assets/images/arrow_down_2.svg",
              height: 10.h, width: 10.w, color: Colors.black),
          SizedBox(
            width: 16.w,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "ADD CC",
              style: GoogleFonts.lato(
                fontSize: 11.sp,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView buildStatsList() {


    

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff06a400), Color(0xff0bc900)],
              ),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/arrow_up.svg",
                      width: 16.w,
                      height: 16.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Income",
                      style: GoogleFonts.lato(
                          fontSize: 15.sp,
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(width: 23.w),
                    
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.34),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1957 ",
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                            SvgPicture.asset(
                                "assets/images/dots_horizontal.svg",
                                width: 8.w,
                                height: 8.h,
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Text(
                      "4 000",
                      style: GoogleFonts.lato(
                          fontSize: 34.sp,
                          color: Colors.white,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " €",
                      style: GoogleFonts.lato(
                        fontSize: 15.sp,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 13.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 17.h),
            // height: 103.h,
            // width: 201.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffff5915), Color(0xffff9424)],
              ),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/arrow_down.svg",
                          width: 16.w, height: 16.h, color: Colors.white),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Spend",
                        style: GoogleFonts.lato(
                            fontSize: 14.sp,
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/clock.svg",
                          width: 18.w, height: 18.h, color: Colors.white),
                      Text(
                        " 50%",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 13.sp,
                          letterSpacing: 0.5,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Container(
                      
                      height: 8.h,
                      width: 80.w,
                      child: LinearProgressIndicator(
                        value: 0.45,
                        backgroundColor: Colors.white38,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack buildDayTile(String dayNum, String dayString,
      [bool isActive = false, isRinged = false]) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: isRinged ? 17.w : 15.w, vertical: isRinged ? 16.h : 15.h),
          decoration: BoxDecoration(
              gradient: isRinged
                  ? LinearGradient(
                      colors: [Color(0xff2a1a95), Color(0xff472bc0)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )
                  : null,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                 width: 1.w,
                  color: isActive ? Colors.black : Color(0xffe5e5e5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dayNum,
                style: GoogleFonts.lato(
                  fontSize: 14.sp,
                  letterSpacing: 0.5,
                  wordSpacing: 0.17,
                  color: isRinged
                      ? Colors.white
                      : isActive
                          ? Colors.black
                          : Color(0xffb1b1b1),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                dayString,
                style: GoogleFonts.lato(
                  fontSize: 14.sp,
                  letterSpacing: 0.5,
                  wordSpacing: 0.17,
                  color: Color(0xffb1b1b1),
                ),
              ),
              if (isRinged)
                Padding(
                  padding: EdgeInsets.only(top: 19.h),
                  child: SvgPicture.asset("assets/images/bell.svg",
                      width: 24.w, height: 24.h, color: Colors.white),
                ),
            ],
          ),
        ),
        if (isRinged)
          Padding(
            padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
            child: CircleAvatar(
              radius: 10.r,
              backgroundColor: Colors.red,
            ),
          )
      ],
    );
  }
}
