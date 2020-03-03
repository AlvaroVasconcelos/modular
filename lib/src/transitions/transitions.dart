import 'package:flutter/widgets.dart';

import '../../flutter_modular.dart';
import 'page_transition.dart';

PageRouteBuilder<T> fadeInTransition<T>(
    Widget Function(
  BuildContext,
  ModularArguments,
)
        builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (BuildContext context, __, ___) {
        return builder(context, args);
      },
      transitionsBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}

PageRouteBuilder<T> noTransition<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageRouteBuilder(
      settings: settings,
      pageBuilder: (BuildContext context, __, ___) {
        return builder(context, args);
      });
}

PageRouteBuilder<T> rightToLeft<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.rightToLeft,
  );
}

PageRouteBuilder<T> leftToRight<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.leftToRight,
  );
}

PageRouteBuilder<T> upToDown<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.upToDown,
  );
}

PageRouteBuilder<T> downToUp<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.downToUp,
  );
}

PageRouteBuilder<T> scale<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.scale,
  );
}

PageRouteBuilder<T> rotate<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.rotate,
  );
}

PageRouteBuilder<T> size<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.size,
  );
}

PageRouteBuilder<T> rightToLeftWithFade<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.rightToLeftWithFade,
  );
}

PageRouteBuilder<T> leftToRightWithFade<T>(
    Widget Function(BuildContext, ModularArguments) builder,
    ModularArguments args,
    RouteSettings settings) {
  return PageTransition<T>(
    settings: settings,
    builder: (context) {
      return builder(context, args);
    },
    type: PageTransitionType.leftToRightWithFade,
  );
}
