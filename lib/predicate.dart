// Copyright (c) 2016, venkatesh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:parsingshape/parsingshape.dart' as parsingshape;

evaluate(String objectType, List<double> squareOutput) {
  List<String> input = parsingshape.readFile('predicates.txt');

  stdout.write("\nObject Type: $objectType \n");

  for (var line in input) {
    var obj = line.toString();
    var objParams = obj.split(" ");


    var area = double.parse(squareOutput[0].toString());
    var cir = double.parse(squareOutput[1].toString());

    bool isArea = objParams.contains("area");
    bool isCir = objParams.contains("circumference");
    bool greater = objParams.contains(">");
    bool lesser = objParams.contains("<");

      if (isArea && greater) {
        var val = double.parse(objParams[2].toString());
        if (area > val) {
          stdout.write("Area is greater than $val \n");
        }
      }

      if (isArea && lesser) {
        if(!isCir) {
          var val = double.parse(objParams[2].toString());
          if (area < val) {
            stdout.write("Area is lesser than $val \n");
          }
        }

      }

      if (isCir && greater) {
        var val = double.parse(objParams[2].toString());
        if (cir > val) {
          stdout.write("Circumference is greater than $val \n");
        }
      }

      if(!isArea){
        if (isCir && lesser) {
            var val = double.parse(objParams[2].toString());
          if (cir < val) {
            stdout.write("Circumference less than $val \n");
          }
        }
      }

      if(isArea && isCir){
        if(greater){
          if(area>cir){
            stdout.write("Area greater than Circumference\n");
          }
          else {
            stdout.write("Area less than Circumferece\n");
          }
        }
        if(lesser){
          if(area<cir){
            stdout.write("Area less than Circumference\n");
          }
          else {
            stdout.write("Area greater than Circumferece\n");
          }
        }
      }
  }
}

