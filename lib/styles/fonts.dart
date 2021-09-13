part of styles;

//FiraSans font

class AppFont {
  static TextStyle getAppFont(
      {FontWeight? fontWeight, Color? color, double? fontSize}) {
    return GoogleFonts.firaSans(
      textStyle: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      ),
    );
  }

  //Header font
  static final primaryHeaderFont = getAppFont(
    fontWeight: FontWeight.w900,
    color: HeaderTextColor.primaryColor,
    fontSize: 40,
  );

  static final secondaryHeaderFont = getAppFont(
    fontWeight: FontWeight.w900,
    color: HeaderTextColor.primaryColor,
    fontSize: 24,
  );

  static final ternaryHeaderFont = getAppFont(
    fontWeight: FontWeight.bold,
    color: HeaderTextColor.secondaryColor,
    fontSize: 20,
  );

  //Text font
  static final primaryTextFont = getAppFont(
    fontWeight: FontWeight.normal,
    color: TextColor.primaryColor,
    fontSize: 16,
  );

  static final secondaryTextFont = getAppFont(
    fontWeight: FontWeight.normal,
    color: TextColor.secondaryColor,
    fontSize: 16,
  );

  static final ternaryTextFont = getAppFont(
    fontWeight: FontWeight.w900,
    color: TextColor.primaryColor,
    fontSize: 16,
  );

  static final quaternaryTextFont = getAppFont(
    fontWeight: FontWeight.bold,
    color: TextColor.ternaryColor,
    fontSize: 16,
  );

  static final quinaryTextFont = getAppFont(
    fontWeight: FontWeight.normal,
    color: TextColor.quaternaryColor,
    fontSize: 16,
  );

  static final quinaryTextFont2 = getAppFont(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: TextColor.quaternaryColor,
  );

 static final senaryTextFont = getAppFont(
    fontWeight: FontWeight.w700,
    color: TextColor.senaryColor,
    fontSize: 14,
  );


}
