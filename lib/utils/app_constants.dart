import 'dart:math';

import 'package:flutter/material.dart';

import '../data/model/story_model.dart';

class AppConstants {

  static  List<StoryModel> stories = [
    StoryModel(name: "HTML", images: "assets/story/html.jpg"),
    StoryModel(name: "JavaScript", images: "assets/story/javascript.png"),
    StoryModel(name: "Maths", images: "assets/story/maths.jpg"),
    StoryModel(name: "Science", images: "assets/story/science.jpg"),
    StoryModel(name: "Biology", images: "assets/story/biology.jpeg"),
    StoryModel(name: "Chemistry", images: "assets/story/chemistry.jpeg"),
    StoryModel(name: "History", images: "assets/story/history.jpg"),
  ];

}