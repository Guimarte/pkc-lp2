import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pkc/controllers/auth_controller.dart';
import 'package:pkc/pages/home/home_controller.dart';
import 'package:pkc/pages/home/home_page.dart';

enum ResponsiveSize {
  resolution1920(
    max: 1920,
    min: 1534,
    fontSizeMedium: 24,
    fontSizeLarge: 32,
    fontSizeSmall: 16,
    fontVeryLarge: 54,
    fontMediumLarge: 32,
  ),
  resolution1534(
    max: 1534,
    min: 1366,
    fontSizeMedium: 21,
    fontSizeLarge: 32,
    fontSizeSmall: 16,
    fontVeryLarge: 54,
    fontMediumLarge: 32,
  ),
  reslution1366(
    max: 1366,
    min: 1280,
    fontSizeMedium: 20,
    fontSizeLarge: 30,
    fontSizeSmall: 16,
    fontVeryLarge: 54,
    fontMediumLarge: 32,
  ),
  reslution1280(
    max: 1280,
    min: 1080,
    fontSizeMedium: 19,
    fontSizeLarge: 28,
    fontSizeSmall: 16,
    fontVeryLarge: 48,
    fontMediumLarge: 32,
  ),
  resolution1080(
    max: 1080,
    min: 720,
    fontSizeMedium: 18,
    fontSizeLarge: 26,
    fontSizeSmall: 16,
    fontVeryLarge: 54,
    fontMediumLarge: 32,
  ),
  resolution720(
    max: 720,
    min: 640,
    fontSizeMedium: 16,
    fontSizeLarge: 24,
    fontSizeSmall: 16,
    fontVeryLarge: 32,
    fontMediumLarge: 24,
  ),
  resolution640(
    max: 640,
    min: 412,
    fontSizeMedium: 16,
    fontSizeLarge: 18,
    fontSizeSmall: 14,
    fontVeryLarge: 22,
    fontMediumLarge: 24,
  ),
  resolution412(
    max: 412,
    min: 360,
    fontSizeMedium: 11,
    fontSizeLarge: 16,
    fontSizeSmall: 14,
    fontVeryLarge: 20,
    fontMediumLarge: 16,
  ),
  resolution360(
    max: 360,
    min: 0,
    fontSizeMedium: 12,
    fontSizeLarge: 16,
    fontSizeSmall: 8,
    fontVeryLarge: 20,
    fontMediumLarge: 16,
  );

  final double max;
  final double min;
  final double fontSizeMedium;
  final double fontSizeLarge;
  final double fontVeryLarge;
  final double fontSizeSmall;
  final double fontMediumLarge;
  const ResponsiveSize({
    required this.max,
    required this.min,
    required this.fontMediumLarge,
    required this.fontVeryLarge,
    required this.fontSizeMedium,
    required this.fontSizeLarge,
    required this.fontSizeSmall,
  });

  static ResponsiveSize responsiveSize(double resolution) {
    return ResponsiveSize.values.firstWhere(
        (size) => resolution <= size.max && resolution >= size.min,
        orElse: () => ResponsiveSize.resolution1920);
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthController());
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ResponsiveSize fontSizes;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    fontSizes = ResponsiveSize.responsiveSize(
      MediaQuery.sizeOf(context).width,
    );
    return GetMaterialApp(
      scrollBehavior: PKCScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'DMSans',
            fontSize: fontSizes.fontSizeLarge,
          ),
          titleMedium: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: fontSizes.fontMediumLarge,
          ),
          titleLarge: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: fontSizes.fontVeryLarge,
          ),
          displayMedium: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: fontSizes.fontSizeLarge,
          ), //
          displaySmall: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: fontSizes.fontSizeSmall,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class PKCScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
