import 'package:flutter/material.dart';

class sliderItem {
  late String ImageUrl;
  late String title;
  late String text2;
  late String text4;

  sliderItem(@required this.ImageUrl, @required this.title,@required this.text2,@required this.text4);


}
final sliderList =[
  sliderItem('images/photo1.webp','Oxford Shirt Regular ','Shirts','25\$'),
  sliderItem('images/photo2.webp','Black Top with Lace ','Tops ','25\$'),
  sliderItem('images/photo3.webp','Patterned Dress ',' Dresses ','25\$ '),
  sliderItem('images/photo4.webp','Black Top with Lace ','Tops ','25\$'),
  sliderItem('images/photo5.webp','Patterned Dress ',' Dresses ','25\$ '),
];