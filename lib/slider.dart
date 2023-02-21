import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shop/dataModel.dart';
import 'package:shop/dotes.dart';
import 'package:shop/home.dart';
import 'package:shop/slideritem.dart';



class HelpScreenOne extends StatefulWidget {
  HelpScreenOne({Key? key}) : super(key: key);

  @override
  State<HelpScreenOne> createState() => _HelpScreenOneState();
}

class _HelpScreenOneState extends State<HelpScreenOne> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 4), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));

      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(microseconds: 800), curve: Curves.easeInBack
          );
    });
  }
  _onPageChanged(int index){
    setState(() {
      _currentPage=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      )),
                ),
              ],
            ),
            Expanded(
              child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SliderClass(index),
                      itemCount: sliderList.length,
                      onPageChanged: _onPageChanged,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 70),
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < sliderList.length; i++)
                                  if (i == _currentPage)
                                    SliderDotes(true)
                                  else
                                    SliderDotes(false)
                              ]),
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}
