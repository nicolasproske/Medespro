import 'package:flutter/material.dart';

enum QuizDifficultyModel {
  easy,
  medium,
  advanced;

  String get title {
    switch (this) {
      case QuizDifficultyModel.easy:
        return "Einfach";
      case QuizDifficultyModel.medium:
        return "Moderat";
      case QuizDifficultyModel.advanced:
        return "Fortgeschritten";
    }
  }

  Color get color {
    switch (this) {
      case QuizDifficultyModel.easy:
        return Colors.green;
      case QuizDifficultyModel.medium:
        return Colors.orange;
      case QuizDifficultyModel.advanced:
        return Colors.indigo;
    }
  }
}
