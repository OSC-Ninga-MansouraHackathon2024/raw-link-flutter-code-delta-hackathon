import 'dart:async';

import 'package:flutter/material.dart';
import 'package:luxira/core/router/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key, Function(dynamic context)? onFinished});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      // if(CacheHelper.getCacheData(key: 'onBoarding')!= null){
      //   if(CacheHelper.getSecuredString(SharedPrefKeys.userToken)!=null){
      //     Navigator.pushReplacementNamed(context, Routes.layout);
      //   }else{
      //     Navigator.pushReplacementNamed(context, Routes.login);
      //   }
      //   }else{
      //     Navigator.pushReplacementNamed(context, Routes.onBoarding);
      //   }
      // }
      Navigator.pushReplacementNamed(context, Routes.homeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SizedBox.expand(
        child: Image.asset(
          'assets/images/splash.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
