

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_project_new_mac/types/suggestions/how_they_know_each_other.dart';

import '../types/suggestions/object.dart';
import '../types/suggestions/one_word.dart';
import '../types/suggestions/place.dart';
import '../types/suggestions/problem_to_solve.dart';
import '../types/suggestions/unusual_event.dart';


String getOneWord(){
  var result = [];
  result = Word.getWords();

final random = Random();
var i = random.nextInt(result.length);
  debugPrint(result[i]);
  return result[i];
}

String getObject() {
  var result = [];
  result = Objects.getObjects();
  var random = Random();
  var i = random.nextInt(result.length);
  return result[i];
}

String getHowTheyKnowEachOther(){
  var result = [];
  result = HowTheyKnowEachOther.getHowTheyKnowEachOther();
  final random = Random();
  var i = random.nextInt(result.length);
  return result[i];
}

String getPlace(){
  var result = [];
  result = Place.getPlaces();
  final random = Random();
  var i = random.nextInt(result.length);
  return result[i];
}

String getProblemToSolve(){
  var result = [];
  result = Problem.getProblems();
  final random = Random();
  var i = random.nextInt(result.length);
  return result[i];
}

String getUnusualEvent(){
  var result = [];
  result = UnusualEvent.getUnusualEvents();
  final random = Random();
  var i = random.nextInt(result.length);
  return result[i];
}