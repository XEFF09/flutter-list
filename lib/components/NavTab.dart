import 'package:flutter/material.dart';

class NavTab extends StatelessWidget {
  final String tabName;
  final bool selected;

  const NavTab({
    Key? key,
    required this.tabName,
    this.selected = false,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5, left: 5),
        child: ButtonBar(
          children: [
            Container(
              decoration: BoxDecoration(
                border: selected? 
                const Border(
                  bottom: BorderSide(color: Colors.white, width: 3),
                ): const Border(
                  bottom: BorderSide(color: Colors.transparent, width: 3),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  ),
                ),
                child: Text(tabName,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}