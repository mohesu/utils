import 'package:flutter/material.dart';

class BottomDeleteCard extends StatelessWidget {
  final void Function() onDelete;
  const BottomDeleteCard({
    Key? key,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Icon(Icons.delete_forever_rounded,
                size: 50, color: Colors.red),
            const SizedBox(height: 20),
            const Text(
              "Delete Collection",
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Are you sure you want to permanently delete this collection?",
              textAlign: TextAlign.center,
              textScaleFactor: 1.1,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: onDelete,
                  child: const Text(
                    "Delete",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
