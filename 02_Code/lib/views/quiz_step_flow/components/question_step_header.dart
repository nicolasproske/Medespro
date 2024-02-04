import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medespro/views/quiz_step_flow/components/question_selection.dart';

class QuestionStepHeaderComponent extends StatefulWidget {
  final String title;
  final String description;

  const QuestionStepHeaderComponent({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<QuestionStepHeaderComponent> createState() =>
      _QuestionStepHeaderComponentState();
}

class _QuestionStepHeaderComponentState
    extends State<QuestionStepHeaderComponent> {
  final GlobalKey<_CountdownTimerState> _timerKey = GlobalKey();

  void _stopTimer() {
    _timerKey.currentState?.stopTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          CountdownTimer(key: _timerKey),
          const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              QuestionSelectionComponent(onAnswerSelected: _stopTimer),
            ],
          ),
        ],
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({Key? key}) : super(key: key);

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer>
    with TickerProviderStateMixin {
  late Timer _timer;
  int _start = 15;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..addListener(() {
        setState(() {
          if (_start == 0) {
            _controller.stop();
          }
        });
      });

    _controller.forward();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void stopTimer() {
    _timer.cancel();
    _controller.stop();
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 140,
            height: 140,
            child: CircularProgressIndicator(
              value: 1.0 - _controller.value,
              strokeWidth: 8,
              backgroundColor:
                  Theme.of(context).colorScheme.surfaceVariant.withAlpha(80),
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary),
            ),
          ),
          Text(
            '$_start',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
