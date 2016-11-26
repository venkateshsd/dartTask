// Copyright (c) 2016, venkatesh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:parsingshape/parsingshape.dart' as parsingshape;

evaluate(List<double> squareOutput) {
  List<String> input = parsingshape.readFile('predicates.txt');

  for (var line in input) {
    var obj = line.toString();
    var objParams = obj.split(" ");
    //print(objParams);

    var area = double.parse(squareOutput[0].toString());
    var cir = double.parse(squareOutput[1].toString());

    bool isArea = objParams.contains("area");
    bool isCir = objParams.contains("circumference");
    bool greater = objParams.contains(">");
    bool lesser = objParams.contains("<");

      if (isArea && greater) {
        var val = double.parse(objParams[2].toString());
        if (area > val) {
          print("Area is greater than");
          print(val);
          print("\n");
        }
      }

      if (isArea && lesser) {
        if(!isCir) {
          var val = double.parse(objParams[2].toString());
          if (area < val) {
            print("Area is lesser than");
            print(val);
            print("\n");
          }
        }

      }

      if (isCir && greater) {
        var val = double.parse(objParams[2].toString());
        if (cir > val) {
          print("Circumference is greater than");
          print(val);
          print("\n");
        }
      }

      if(!isArea){
        if (isCir && lesser) {
            var val = double.parse(objParams[2].toString());
          if (cir < val) {
            print("Circumference less than");
            print(val);
            print("\n");
          }
        }
      }

      if(isArea && isCir){
        if(greater){
          if(area>cir){
            print("Area greater than Circumference");
          }
          else {
            print("Area less than Circumferece");
          }
        }
        if(lesser){
          if(area<cir){
            print("Area less than Circumference");
          }
          else {
            print("Area greater than Circumferece");
          }
        }
      }
  }

}

