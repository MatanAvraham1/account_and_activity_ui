import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [buildHeader(), buildBody()],
      ),
    );
  }

  Padding buildBody() {
    return Padding(
      padding: EdgeInsets.only(left: 29.w, top: 29.h),
      child: Column(
        children: [
          buildStatsList(),
          SizedBox(
            height: 59.h,
          ),
          Row(
            children: [
              Text(
                "TRANSACTIONS",
                style: GoogleFonts.lato(
                  fontSize: 18.sp,
                  letterSpacing: 0.5,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "[ € ]",
                style: GoogleFonts.lato(
                  fontSize: 10.sp,
                  letterSpacing: 0.5,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 52.w),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Recent",
                            style: GoogleFonts.lato(
                              fontSize: 12.sp,
                              letterSpacing: 0.5,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Container(
                            width: 30.w,
                            height: 2.w,
                            color: Color(0xff5836cf),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.w),
                        child: Text(
                          "Old",
                          style: GoogleFonts.lato(
                            fontSize: 12.sp,
                            letterSpacing: 0.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.w),
                        child: Text(
                          "Best",
                          style: GoogleFonts.lato(
                            fontSize: 12.sp,
                            letterSpacing: 0.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 41.h,
          ),
          buildSpentTypeTile(
              "Internet",
              "#512684",
              "-58",
              SvgPicture.asset("assets/images/internet.svg",
                  width: 27.w, height: 29.h)),
          buildSpentTypeTile(
              "Market",
              "#512685",
              "-9,56",
              SvgPicture.asset("assets/images/mc_drive.svg",
                  width: 21.w, height: 26.h),
              Color(0xff462bbf),
              FontWeight.w900),
          Divider(
            thickness: 2.h,
          ),
          buildSpentTypeTile(
              "Market",
              "#512686",
              "-22",
              SvgPicture.asset(
                "assets/images/cart.svg",
                width: 27.w,
                height: 29.h,
              )),
        ],
      ),
    );
  }

  ListTile buildSpentTypeTile(
      String title, String subTitle, String tralling, Widget icon,
      [Color color = Colors.black,
      FontWeight subTitleFontWeight = FontWeight.w300]) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: GoogleFonts.lato(
          fontSize: 18.sp,
          letterSpacing: 0.5,
          color: Color(0xff505c72),
          fontWeight: FontWeight.w900,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: subTitleFontWeight,
          letterSpacing: 0.5,
          color: color,
        ),
      ),
      trailing: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tralling,
            style: GoogleFonts.lato(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              color: color,
            ),
          ),
          Text(
            " €",
            style: GoogleFonts.lato(
                fontSize: 13.sp, letterSpacing: 0.5, color: color),
          )
        ],
      ),
    );
  }

  SingleChildScrollView buildStatsList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 151.w,
                height: 161.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff2a1a95), Color(0xff472bc0)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 23, left: 21),
                      child: Row(
                        children: [
                          Text(
                            "Balance",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              letterSpacing: 0.5,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 52.w,
                          ),
                          SvgPicture.asset("assets/images/dots_vertical.svg",
                              width: 4.w, height: 16.h, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w),
                      child: Row(
                        children: [
                          Text(
                            "+859",
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
                    ),
                    SizedBox(height: 31.h),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/visa.svg",
                            width: 30.w,
                            height: 8.h,
                            color: Colors.white,
                          ),
                          SvgPicture.asset("assets/images/arrow_down_2.svg",
                              width: 4.w, height: 7.h),
                          SizedBox(width: 25.w),
                          Text(
                            "Dec, 02th",
                            style: GoogleFonts.lato(
                              fontSize: 9.sp,
                              letterSpacing: 0.5,
                              color: Color(0xff9e95d2),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                "assets/images/wave.png",
                width: 180.w,
                height: 84.h,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.w),
            child: Container(
              height: 161.h,
              width: 121.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff06a400), Color(0xff0bc900)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 23.h),
                    child: Row(children: [
                      SvgPicture.asset("assets/images/arrow_up.svg",
                          color: Colors.white, width: 11.w, height: 10.h),
                      SizedBox(width: 10.w),
                      Text(
                        "Income",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      )
                    ]),
                  ),
                  SizedBox(height: 14.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(colors: [
                        Colors.white,
                        Colors.white.withOpacity(0)
                      ]).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                      child: Text(
                        "+3500",
                        maxLines: 1,
                        style: GoogleFonts.lato(
                            fontSize: 34.sp,
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/clock.svg",
                            color: Colors.white, width: 12.w, height: 12.h),
                        SizedBox(width: 7.w),
                        Text(
                          "50 %",
                          style: GoogleFonts.lato(
                            fontSize: 9.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 11.h),
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
          Padding(
            padding: EdgeInsets.only(left: 13.w),
            child: Container(
              height: 160.h,
              width: 120.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffff5915), Color(0xffff9423)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 23.h),
                    child: Row(children: [
                      SvgPicture.asset("assets/images/arrow_down.svg",
                          width: 11.w, height: 10.h, color: Colors.white),
                      SizedBox(width: 10.w),
                      Text(
                        "Spend",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            letterSpacing: 0.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      )
                    ]),
                  ),
                  SizedBox(height: 14.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Row(
                      children: [
                        Text(
                          "-170",
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack buildHeader() {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        // Right part
        Container(
          height: 172.h,
          width: 375.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff1b2027), Color(0xff2e3542)],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.r),
              bottomRight: Radius.circular(25.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 32.w),
                child: Row(
                  children: [
                    Text(
                      "Account",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      width: 95.w,
                    ),
                    SvgPicture.asset(
                      "assets/images/arrow_back.svg",
                      width: 23.w,
                      height: 23.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 30.w),
                child: Row(
                  children: [
                    Text(
                      "[N°]",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 12.sp,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Transaction Number",
                      style: GoogleFonts.lato(
                        color: Color(0xff55585f),
                        fontSize: 12.sp,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 75.w),
                    SvgPicture.asset("assets/images/search.svg",
                        color: Colors.white, width: 15.w, height: 15.h),
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              Padding(
                padding: EdgeInsets.only(left: 29.w),
                child: Container(
                  color: Color(0xff55585f),
                  width: 246.w,
                  height: 2.h,
                ),
              )
            ],
          ),
        ),
        // Left part
        Container(
          width: 78.w,
          height: 172.h,
          decoration: BoxDecoration(
            color: Color(0xff20262e),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 44.h, left: 35.w),
                child: SvgPicture.asset(
                  "assets/images/nav.svg",
                  width: 21.w,
                  height: 13.h,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 59.h,
              ),
              SvgPicture.asset(
                "assets/images/circle_user.svg",
                width: 34.w,
                height: 34.h,
                fit: BoxFit.fill,
              ),
            ],
          ),
        )
      ],
    );
  }
}
