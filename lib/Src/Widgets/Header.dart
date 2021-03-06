import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  final bool isCollapsed;

  const CustomDrawerHeader({
    Key? key,
    required this.isCollapsed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 500
      ),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(size: 30,),
          if (isCollapsed) const SizedBox(width: 10,),
          if (isCollapsed) const Expanded(
            flex: 3,
            child: Text(
              'Flutter Collapsed',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              maxLines: 1,
            ),
          ),
          if (isCollapsed) const Spacer(),
          if (isCollapsed) Expanded(
            flex: 1,
            child: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
