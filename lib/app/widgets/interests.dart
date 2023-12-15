import 'package:flutter/material.dart';

class InterestChipWidget extends StatefulWidget {
  const InterestChipWidget({super.key, required this.interestName});

  final String interestName;

  @override
  State<StatefulWidget> createState() => _InterestChipWidgetState();
}

class _InterestChipWidgetState extends State<InterestChipWidget> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _selectChip() {
    setState(() {
      _isSelected = _isSelected ? false: true;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.interestName, style: Theme.of(context).textTheme.bodyMedium), 
      onSelected: (bool s) {
        _selectChip();
      },
      selected: _isSelected,
    );
  }
}

class InterestsWidget extends StatelessWidget {
  const InterestsWidget({super.key, required this.interestsList});

  final List<String> interestsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Wrap(
        spacing: 8,
        children: [
          for (var name in interestsList) InterestChipWidget(interestName: name)
        ]
      )
    );
  }
}
