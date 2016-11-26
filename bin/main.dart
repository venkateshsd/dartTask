// Copyright (c) 2016, venkatesh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:io';

import 'package:parsingshape/parsingshape.dart' as parsingshape;
import 'package:parsingshape/predicate.dart' as predicate;

void main() {
  List<String> input = parsingshape.readFile('input.txt');
  parsingshape.parseObject(input);
}