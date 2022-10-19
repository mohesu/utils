import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String cardName;
  final void Function()? onViewInfo;
  final void Function()? onDeleteInfo;
  final void Function()? onEditInfo;
  final double? height;
  final Widget? topWidget;
  final Widget? bottomWidget;
  const BottomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onViewInfo,
    this.onDeleteInfo,
    this.onEditInfo,
    this.height = 450,
    this.cardName = "Info",
    this.topWidget,
    this.bottomWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(22),
        topRight: Radius.circular(22),
      ),
      child: SizedBox(
        height: height,
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
              topWidget ?? const SizedBox.shrink(),
              if (onViewInfo != null) ...[
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
              ],
              if (onEditInfo != null) ...[
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
              ],
              if (onDeleteInfo != null) ...[
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
              ],
              bottomWidget ?? const SizedBox.shrink(),
              ...[
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
            ],
          ),
        ),
      ),
    );
  }
}
