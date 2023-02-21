import 'package:flutter/material.dart';
import 'package:shop/dataModel.dart';

class SliderClass extends StatelessWidget {
  late int index;
  SliderClass(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image(
              image: AssetImage(
                sliderList[index].ImageUrl,
              ),
              width: 400,
              height: 235,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sliderList[index].title,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    sliderList[index].text4,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    sliderList[index].text2,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
