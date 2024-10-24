import 'package:aking/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  List<PageViewModel> pageViewModels = [
    PageViewModel(
      bodyWidget: Column(
        children: [
          SizedBox(height: 20,),
          Text("Welcome to aking",style: TextStyle(fontSize: 24,color: Colors.black),),

          SizedBox(height: 20,),
          Text("Whats going to happen tomorrow?",style: TextStyle(fontSize: 18,color: Color(0xff313131)),)
        ],
      ),
      titleWidget: SvgPicture.asset("assets/images/intro_img1.svg"),

    ),
    PageViewModel(
      bodyWidget: Column(
        children: [
          SizedBox(height: 20,),
          Text("Work happens",style: TextStyle(fontSize: 24,color: Colors.black),),

          SizedBox(height: 20,),
          Text("Get notified when work happens.",style: TextStyle(fontSize: 18,color: Color(0xff313131)),)
        ],
      ),
      titleWidget: SvgPicture.asset("assets/images/intro_img2.svg"),

    ),
    PageViewModel(
      bodyWidget: Column(
        children: [
          SizedBox(height: 20,),
          Text("Tasks and assign",style: TextStyle(fontSize: 24,color: Colors.black),),

          SizedBox(height: 20,),
          Text("Task and assign them to colleagues.",style: TextStyle(fontSize: 18,color: Color(0xff313131)),)
        ],
      ),
      titleWidget: SvgPicture.asset("assets/images/intro_img3.svg"),

    ),
  ];

  Color intro_bg_color = Color(0xffF96060);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: IntroductionScreen(
        pages: pageViewModels,
        globalFooter: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(Assets.imagesIntroBg,width: MediaQuery.of(context).size.width,color: intro_bg_color,),
            Column(
              children: [
                SizedBox(height: 20,),
                CupertinoButton(
                    color: Colors.white,

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("Get Started", style: TextStyle(fontSize: 18,color: Color(0xff313131)),),
                    ), onPressed: (){}),
                SizedBox(height: 10,),
                CupertinoButton(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("Log in", style: TextStyle(fontSize: 18,color: Colors.white),),
                    ), onPressed: (){}),

              ],
            )
          ],
        ),
        showNextButton: false,
        onChange: (value) {
          if(value == 0){intro_bg_color=Color(0xffF96060);}
          else if(value == 1){intro_bg_color=Color(0xff6074F9);}
          else if(value == 2){intro_bg_color=Color(0xff8560F9);}
          setState(() {

          });
        },
        done: Text("Let's go"),
        onDone: (){},
      ),
    );
  }
}








