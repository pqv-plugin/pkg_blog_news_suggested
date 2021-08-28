import 'package:flutter/material.dart';

double _xs = 359;
double _xsm = 399;
double _xsb = 599;
double _sm = 839;
double _smm = 959;
double _smb = 1023;
double _md = 1279;
double _mdm = 1439;
double _lg = 1599;
double _lgm = 1919;
double _xl = 1920;

enum ScreenType {
  ///0 ~ 359
  xSmall,

  // 360 ~ 399
  xSmallMedium,

  //400 ~ 599
  xSmallBig,

  // 600 ~ 839
  small,

  // 840 ~959
  smallMedium,

  // 960 ~ 1023
  smallBig,

  // 1024 ~ 1279
  medium,

  // 1280 ~ 1439
  mediumMedium,

  // 1440 ~ 1599
  large,

  // 1600 ~ 1919
  largeMedium,

  // 1920+
  xlarge
}

/*void setResponsiveBreakpoints(
    {double xs = 359,
    double xsm = 399,
    double xsb = 599,
    double sm = 839,
    double smm = 959,
    double smb = 1023,
    double md = 1279,
    double mdm = 1439,
    double lg = 1599,
    double lgm = 1919,
    double xl = 1920}) {
  _xs = xs;
  _xsm = xsm;
  _xsb = xsb;
  _sm = sm;
  _smm = smm;
  _smb = smb;
  _md = md;
  _mdm = mdm;
  _lg = lg;
  _lgm = lgm;
  _xl = xl;
}*/

ScreenType activeScreenType(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  if (width <= _xs) {
    return ScreenType.xSmall;
  } else if (width <= _xsm) {
    return ScreenType.xSmallMedium;
  } else if (width <= _xsb) {
    return ScreenType.xSmallBig;
  } else if (width <= _sm) {
    return ScreenType.small;
  } else if (width <= _smm) {
    return ScreenType.smallMedium;
  } else if (width <= _smb) {
    return ScreenType.smallBig;
  } else if (width <= _md) {
    return ScreenType.medium;
  } else if (width <= _mdm) {
    return ScreenType.mediumMedium;
  } else if (width <= _lg) {
    return ScreenType.large;
  } else if (width <= _lgm) {
    return ScreenType.largeMedium;
  } else if (width >= _xl) {
    return ScreenType.xlarge;
  }

  return ScreenType.xlarge;
}

///Defines a responsive defaultValue<T> based on screen type [xs, xsm, xsb, sm, smm, smb, md, mdm, lg, lgm, xl]
class ScreenResponsive<int> {
  int defaultValue;

  // Screen width 0 ~ 359
  int? xs;

  // Screen width 360 ~ 399
  int? xsm;

  // Screen width 400 ~ 599
  int? xsb;

  //Screen width 600 ~ 839
  int? sm;

  //Screen width 840 ~ 959
  int? smm;

  //Screen width 960 ~ 1023
  int? smb;

  //Screen width 1024 ~ 1279
  int? md;

  //Screen width 1080 ~ 1439
  int? mdm;

  //Screen width 1440 ~ 1599
  int? lg;

  //Screen width 1600 ~ 1919
  int? lgm;

  //Screen width > 1920
  int? xl;

  ScreenResponsive(
    this.defaultValue, {
    this.xs,
    this.xsm,
    this.xsb,
    this.sm,
    this.smm,
    this.smb,
    this.md,
    this.mdm,
    this.lg,
    this.lgm,
    this.xl,
  }) {
    this.xs = this.xs ?? defaultValue;
    this.xsm = this.xsm ?? this.xs;
    this.xsb = this.xsb ?? this.xsm;

    this.sm = this.sm ?? this.xsb;
    this.smm = this.smm ?? this.sm;
    this.smb = this.smb ?? this.smm;

    this.md = this.md ?? this.smb;
    this.mdm = this.mdm ?? this.md;

    this.lg = this.lg ?? this.mdm;
    this.lgm = this.lgm ?? this.lg;

    this.xl = this.xl ?? this.lgm;
  }

  ///Get the defaultValue based on screen size
  int value(BuildContext context) {
    var _activeScreenType = activeScreenType(context);

    if (_activeScreenType == ScreenType.xSmall && xs != null) {
      return xs!;
    } else if (_activeScreenType == ScreenType.xSmallMedium && xsm != null) {
      return xsm!;
    } else if (_activeScreenType == ScreenType.xSmallBig && xsb != null) {
      return xsb!;
    } else if (_activeScreenType == ScreenType.small && sm != null) {
      return sm!;
    } else if (_activeScreenType == ScreenType.smallMedium && smm != null) {
      return smm!;
    } else if (_activeScreenType == ScreenType.smallBig && smb != null) {
      return smb!;
    } else if (_activeScreenType == ScreenType.medium && md != null) {
      return md!;
    } else if (_activeScreenType == ScreenType.mediumMedium && mdm != null) {
      return mdm!;
    } else if (_activeScreenType == ScreenType.large && lg != null) {
      return lg!;
    } else if (_activeScreenType == ScreenType.largeMedium && lgm != null) {
      return lgm!;
    } else if (_activeScreenType == ScreenType.xlarge && xl != null) {
      return xl!;
    }

    return defaultValue;
  }
}

///Hides the widget on a specific screen type [sm, md, lg]
class ScreenResponsiveHidden extends StatelessWidget {
  final Widget child;

  final bool xs;
  final bool xsm;
  final bool xsb;
  final bool sm;
  final bool smm;
  final bool smb;
  final bool md;
  final bool mdm;
  final bool lg;
  final bool lgm;
  final bool xl;

  ScreenResponsiveHidden({
    Key? key,
    required this.child,
    this.xs = false,
    this.xsm = false,
    this.xsb = false,
    this.sm = false,
    this.smm = false,
    this.smb = false,
    this.md = false,
    this.mdm = false,
    this.lg = false,
    this.lgm = false,
    this.xl = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _activeScreenType = activeScreenType(context);
    var offstage = false;

    if (_activeScreenType == ScreenType.xSmall && xs) {
      offstage = true;
    }
    if (_activeScreenType == ScreenType.xSmallMedium && xsm) {
      offstage = true;
    }
    if (_activeScreenType == ScreenType.xSmallBig && xsb) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.small && sm) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.smallMedium && smm) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.smallBig && smb) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.medium && md) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.mediumMedium && mdm) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.large && lg) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.largeMedium && lgm) {
      offstage = true;
    } else if (_activeScreenType == ScreenType.xlarge && xl) {
      offstage = true;
    }

    return Offstage(
      child: child,
      offstage: offstage,
    );
  }
}
