enum Language {
  Dari,
  Pashto,
  Persian
}

class CalendarConfig {
  static Language _calendarLanguage = Language.Dari;

  static Language get calendarLanguage => _calendarLanguage;

  static setCalendarLanguage(Language language) {
    _calendarLanguage = language;
  }
}

void change(){
  CalendarConfig.setCalendarLanguage(Language.Pashto);

}