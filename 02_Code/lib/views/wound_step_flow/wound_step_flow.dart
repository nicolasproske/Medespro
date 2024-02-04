import 'package:flutter/material.dart';
import 'package:medespro/supporting_files/provider/step_view.dart';

class WoundStepFlowView extends StatefulWidget {
  const WoundStepFlowView({super.key});

  @override
  State<WoundStepFlowView> createState() => _WoundStepFlowViewState();
}

class _WoundStepFlowViewState extends State<WoundStepFlowView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final int _totalPages = 11;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            _currentPage == _totalPages - 1
                ? 'Abschluss'
                : 'Schritt ${_currentPage + 1} von $_totalPages',
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        LinearProgressIndicator(
          value: (_currentPage + 1) / _totalPages,
          minHeight: 5.0,
          borderRadius: BorderRadius.circular(2.5),
        ),
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: _totalPages,
            itemBuilder: (context, index) {
              return StepViewProvider.getWoundStepFlowView(index);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: _currentPage > 0
                  ? () => _pageController.previousPage(
                        duration: const Duration(milliseconds: 150),
                        curve: Curves.easeInOut,
                      )
                  : null,
              child: const Text('Zurück'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_currentPage < _totalPages - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.pop(context);
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.onPrimary),
              ),
              child:
                  Text(_currentPage == _totalPages - 1 ? 'Fertig' : 'Weiter'),
            ),
          ],
        ),
      ],
    );
  }
}
