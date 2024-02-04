import 'package:flutter/material.dart';
import 'package:medespro/views/wound_step_flow/models/wound_type.dart';

class WoundTypePickerComponent extends StatefulWidget {
  const WoundTypePickerComponent({super.key});

  @override
  State<WoundTypePickerComponent> createState() =>
      _WoundTypePickerComponentState();
}

class _WoundTypePickerComponentState extends State<WoundTypePickerComponent> {
  WoundTypeModel selectedWoundType = WoundTypeModel.woundOne;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<WoundTypeModel>(
      value: selectedWoundType,
      isExpanded: true,
      onChanged: (WoundTypeModel? newValue) {
        setState(() {
          if (newValue != null) {
            selectedWoundType = newValue;
          }
        });
      },
      items: WoundTypeModel.values
          .map<DropdownMenuItem<WoundTypeModel>>((WoundTypeModel value) {
        return DropdownMenuItem<WoundTypeModel>(
          value: value,
          child: Text(
            value.name,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        );
      }).toList(),
    );
  }
}
