import 'package:flutter/material.dart';


class CustomSearchBar extends StatefulWidget {
  final Function(String)? onSearch;
  final IconData leftIcon;
  final IconData rightIcon;
  final String placeholder;

  const CustomSearchBar({
    super.key,
    this.onSearch,
    this.leftIcon = Icons.search,
    this.rightIcon = Icons.mic,
    this.placeholder = "Search here..."
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            //Left Icon
            IconButton(
              icon: Icon(widget.leftIcon, color: Colors.black, size: 30,),
               onPressed: () {},
            ),

            //Typing Area
            Expanded(
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: widget.placeholder,
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {
                  if (widget.onSearch != null) widget.onSearch!(value);
                },
              ),
            ),

            //Vertical Line(|)
            Container(
              height: 24,
              width: 1,
              color: Colors.grey[300],
              margin: const EdgeInsets.symmetric(horizontal: 8),
            ),

            //Right mic icon
            IconButton(
              icon: Icon(widget.rightIcon, color: Colors.black, size: 30,),
              onPressed: () {
                _controller.clear();
                FocusScope.of(context).unfocus();
              },
            ),
          ],
        ),
      ),
    );
  }
}
