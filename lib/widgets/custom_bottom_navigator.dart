import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatefulWidget {
  const CustomBottomNavigator({
    super.key,
    required this.bottomData,
    required this.takeCurrentIndex,
  });
  final List<Map<String, dynamic>> bottomData;
  final void Function(int currentIndex) takeCurrentIndex;
  @override
  State<CustomBottomNavigator> createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavigator> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: BottomNavigationBar(
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        elevation: 10,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
            widget.takeCurrentIndex(value);
          });
        },
        currentIndex: _currentIndex,
        items: List.generate(
          widget.bottomData.length,
          (index) => BottomNavigationBarItem(
            activeIcon: widget.bottomData[index]['active_icon'],
            label: widget.bottomData[index]['label'],
            icon: widget.bottomData[index]['icon'],
          ),
        ),
      ),
    );
  }
}
