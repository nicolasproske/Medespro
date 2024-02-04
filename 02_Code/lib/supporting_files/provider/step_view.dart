import 'package:flutter/material.dart';
import 'package:medespro/views/quiz_step_flow/first_question_step.dart';
import 'package:medespro/views/quiz_step_flow/quiz_results.dart';
import 'package:medespro/views/quiz_step_flow/rules_step.dart';
import 'package:medespro/views/wound_step_flow/check_data_step.dart';
import 'package:medespro/views/wound_step_flow/choose_region_step.dart';
import 'package:medespro/views/wound_step_flow/finish_step.dart';
import 'package:medespro/views/wound_step_flow/intro_step.dart';
import 'package:medespro/views/wound_step_flow/pain_step.dart';
import 'package:medespro/views/wound_step_flow/precise_region_step.dart';
import 'package:medespro/views/wound_step_flow/processing_step.dart';
import 'package:medespro/views/wound_step_flow/take_photo_step.dart';
import 'package:medespro/views/wound_step_flow/wound_region_step.dart';
import 'package:medespro/views/wound_step_flow/wound_type_step.dart';

class StepViewProvider {
  static Widget getWoundStepFlowView(int viewIndex) {
    switch (viewIndex) {
      case 0:
        return const IntroStepView();
      case 1:
        return const WoundTypeStepView();
      case 2:
        return const WoundRegionStepView();
      case 3:
        return const ChooseRegionStepView();
      case 4:
        return const PreciseRegionStepView();
      case 5:
        return const PainStepView();
      case 6:
        return const TakePhotoStepView();
      case 7:
        return const Placeholder();
      case 8:
        return const ProcessingStepView();
      case 9:
        return const CheckDataStepView();
      case 10:
        return const FinishStepView();
      default:
        return const Placeholder();
    }
  }

  static Widget getQuizStepFlowView(int viewIndex) {
    switch (viewIndex) {
      case 0:
        return const RulesStepView();
      case 1:
        return const FirstQuestionStepView();
      case 2:
        return const QuizResultsView();
      default:
        return const Placeholder();
    }
  }
}
