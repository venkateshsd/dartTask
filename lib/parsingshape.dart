// Copyright (c) 2016, venkatesh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:parsingshape/predicate.dart' as predicate;

const pi = 3.14;
String obj='';

readFile(String inputfile) {
  var fileName = new File(inputfile);
  List<String> lines = fileName.readAsLinesSync();
  return lines;
}

parseObject(List<String> input){

  for(var line in input) {
    obj = line.toString();
    var objParams = obj.split(" ");
    bool objTypeSquare = objParams.contains("square");
    bool objTypeRectangle = objParams.contains("rectangle");
    bool objTypeCircle = objParams.contains("circle");

    if (objTypeSquare) {
      List<double> squareOutput = calcSquare(double.parse(objParams[1]));
      predicate.evaluate(squareOutput);
      //break;
    }

    if(objTypeRectangle) {
      List <double> rectOutput = calcRect(double.parse(objParams[1]),double.parse(objParams[2]));
      predicate.evaluate(rectOutput);
    }

    if(objTypeCircle){
      List <double> circleOutput = calcCircle(double.parse(objParams[1]));
      predicate.evaluate(circleOutput);
    }
  }
}

calcSquare(double side){
  var area = side*side;
  var circumference = 4*side;
  List<double> square = [area,circumference];
  return square;
  //print(area);
  //print(circumference);
}

calcRect(double length,double breadth){
  var area = length * breadth;
  var circumference = 2*(length+breadth);
  List<double> rect = [area,circumference];
  return rect;
  //print(area);
  //print(circumference);
}

calcCircle(double radius){
  var area = pi*radius*radius;
  var circumference = 2*pi*radius;
  List<double> circle = [area,circumference];
  return circle;
  //print(area);
  //print(circumference);
}