// Copyright 2018 - 2021, Amirreza Madani. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library jalali_formatter;

import 'package:dari_datetime_picker/src/config.dart';

import '../date_formatter.dart';
import '../jalali/jalali_date.dart';

/// Jalali date formatter class
class JalaliFormatter extends DateFormatter {
  /// make a [JalaliFormatter] from [Jalali] date
  JalaliFormatter(Jalali date) : super(date);

  /// Jalali pashto month names
  static const List<String> _pashtoMonths = <String>[
    'وری',
    'غویی',
    'غبرګل',
    'چنګاښ',
    'زمری',
    'وږی',
    'تله',
    'لندی',
    'سلواغه',
    'اوبه',
    'جوب',
    'زمونږ',
  ];

  /// Jalali persian month names
  static const List<String> _persianMonthNames = [
    'فروردین',
    'اردیبهشت',
    'خرداد',
    'تیر',
    'مرداد',
    'شهریور',
    'مهر',
    'آبان',
    'آذر',
    'دی',
    'بهمن',
    'اسفند',
  ];

  /// Dari month names
  static const List<String> _dariMonthNames = [
    'حمل',
    'ثور',
    'جوزا',
    'سرطان',
    'اسد',
    'سنبله',
    'میزان',
    'عقرب',
    'قوس',
    'جدی',
    'دلو',
    'حوت',
  ];

  /// Jalali week day names
  static const List<String> _persianWeekDayNames = [
    'شنبه',
    'یک شنبه',
    'دو شنبه',
    'سه شنبه',
    'چهار شنبه',
    'پنج شنبه',
    'جمعه',
  ];

  /// Pashto week day names
  static const List<String> _pashtoWeekdays = <String>[
    'اتوار',
    'پیر',
    'منځنه',
    'بودو',
    'پنجمه',
    'جمعه',
    'اونګ',
  ];


  /// Jalali month name
  @override
  String get mN {
    switch(CalendarConfig.calendarLanguage){
      case Language.Dari:
        return _dariMonthNames[date.month - 1];
      case Language.Pashto:
        return _pashtoMonths[date.month - 1];
      case Language.Persian:
        return _persianMonthNames[date.month - 1];
    }
  }

  /// Jalali week day name
  @override
  String get wN {
    return _persianWeekDayNames[date.weekDay - 1];
  }
}
