import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/main/controllers/menu_controller.dart';

class WebMenu extends StatelessWidget {
  final MenuAppController _controller = Get.put(MenuAppController());

  WebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          const Spacer(),
          Obx(
            () => Row(
              children: List.generate(
                _controller.menuItems.length,
                (index) => WebMenuItem(
                  text: _controller.menuItems[index],
                  isActive: index == _controller.selectedIndex,
                  press: () => _controller.setMenuIndex(index),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
