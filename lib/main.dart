import 'package:flutter/material.dart';
import 'package:singleversion/view/navigation_menu_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Product",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primarySwatch: Colors.blue,
        //pageTransitionsTheme: const PageTransitionsTheme(builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder(),}),
      ),
      //home: HomePage(),
      //home: ProductDetailView(),

      //home: AboutUsView(),
      //home: PrivacyAndTermView(),
      //home: HomePageView(),
      //home: LoginView(),
      //home: ForgotPasswordView(),
      // home: SignupView(),
      //home: SubmitOtpView(phoneNumber: "017884575"),
      //home: AutoListView(),
      //home: const NavigationMenuView()
      home: const NavigationMenuView(),
    );
  }
}

