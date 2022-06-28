import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cardName;
  final void Function() onViewInfo;
  final void Function() onDeleteInfo;
  final void Function() onEditInfo;
  const BottomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onViewInfo,
    required this.onDeleteInfo,
    required this.onEditInfo,
    this.cardName = "Info",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: SizedBox(
        height: 450,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                title,
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                textScaleFactor: 1.1,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.info),
                title: Text(
                  "View $cardName",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: onViewInfo,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.edit),
                title: Text(
                  "Update $cardName",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: onEditInfo,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                title: Text(
                  "Delete $cardName",
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: onDeleteInfo,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.cancel),
                title: const Text(
                  "Cancel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
