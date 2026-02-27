import 'package:art_ilo/screens/art_style_category.dart';
import 'package:art_ilo/screens/artist_detail_screen.dart';
import 'package:art_ilo/screens/artist_list_category.dart';
import 'package:art_ilo/screens/main_screen.dart';
import 'package:art_ilo/screens/splash_screen.dart';
import 'package:art_ilo/screens/style_detail_screen.dart';
import 'package:art_ilo/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 946),
      minTextAdapt: true,

      builder: (context, child) => MaterialApp(
        routes: {
          "/mainPage": (context) => MainScreen(),
          "/artistPage": (context) => ArtistDetailScreen(artistId: 0),
          "/artStylePage": (context) => StyleDetailScreen(styleId: 0),
          "/artStyleCategoryPage": (context) => ArtStyleCategory(),
          "/artistListCategoryPage": (context) => ArtistListCategory(),

        },
        theme: createTheme(isDark: false),
        darkTheme: createTheme(isDark: true),
        themeMode: ThemeMode.system,
        home: SplashScreen(),
      ),
    );
  }
}
