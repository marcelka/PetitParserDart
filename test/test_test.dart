// Copyright (c) 2013, Lukas Renggli <renggli@gmail.com>

library test_test;

import 'package:petitparser/petitparser.dart';
import 'package:petitparser/test.dart';
import 'package:unittest/unittest.dart';

void main() {
  test('accept', () {
    expect('a', accept(char('a')));
    expect('b', isNot(accept(char('a'))));
  });
  test('parse', () {
    expect('a', parse(char('a'), 'a'));
    expect('a', isNot(parse(char('a'), 'b')));
  });
  test('parse (with position)', () {
    expect('a', parse(char('a'), 'a', 1));
    expect('a', isNot(parse(char('a'), 'a', 0)));
  });
}