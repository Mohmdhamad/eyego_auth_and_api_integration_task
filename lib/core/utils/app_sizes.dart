import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes {
  static late final double _w4;
  static late final double _w8;
  static late final double _w10;
  static late final double _w12;
  static late final double _w14;
  static late final double _w16;
  static late final double _w20;
  static late final double _w24;
  static late final double _w28;


  static late final double _h8;
  static late final double _h10;
  static late final double _h12;
  static late final double _h14;
  static late final double _h16;
  static late final double _h20;
  static late final double _h24;
  static late final double _h28;
  static late final double _h50;

  static late final double _r15;
  static late final double _r20;

  static late final double _sp16;
  static late final double _sp18;
  static late final double _sp20;
  static late final double _sp22;
  static late final double _sp24;

  static bool _initialized = false;

  static void init() {
    if (_initialized) return;
    _w4 = 4.w;
    _w8 = 8.w;
    _w10 = 10.w;
    _w12 = 12.w;
    _w14 = 14.w;
    _w16 = 16.w;
    _w20 = 20.w;
    _w24 = 24.w;
    _w28 = 28.w;


    _h8 = 8.h;
    _h10 = 10.h;
    _h12 = 12.h;
    _h14 = 14.h;
    _h16 = 16.h;
    _h20 = 20.h;
    _h24 = 24.h;
    _h28 = 28.h;
    _h50 = 50.h;

    _r15 = 15.r;
    _r20 = 20.r;

    _sp16 = 16.sp;
    _sp18 = 18.sp;
    _sp20 = 20.sp;
    _sp22 = 22.sp;
    _sp24 = 24.sp;

    _initialized = true;
  }

  static double get w4 => _w4;
  static double get w8 => _w8;

  static double get w10 => _w10;

  static double get w12 => _w12;

  static double get w14 => _w14;

  static double get w16 => _w16;

  static double get w20 => _w20;

  static double get w24 => _w24;

  static double get w28 => _w28;


  static double get h8 => _h8;

  static double get h10 => _h10;

  static double get h12 => _h12;

  static double get h14 => _h14;

  static double get h16 => _h16;

  static double get h20 => _h20;

  static double get h24 => _h24;

  static double get h28 => _h28;

  static double get h60 => _h50;

  static double get r15 => _r15;

  static double get r20 => _r20;

  static double get sp16 => _sp16;

  static double get sp18 => _sp18;

  static double get sp20 => _sp20;

  static double get sp22 => _sp22;

  static double get sp24 => _sp24;
}
