import 'package:flutter/material.dart';

class DropdownWidget<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final Function(T?)? onChanged;
  final T value;

  const DropdownWidget(
      {Key? key, required this.items, this.onChanged, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 24,
          value: value,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
