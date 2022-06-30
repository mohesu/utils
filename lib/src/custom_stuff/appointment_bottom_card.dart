import 'package:flutter/material.dart';

class AppointmentStatusUpdateBottomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final Color buttonColor;
  final double? height;
  final Widget child;
  final void Function() onUpdate;
  const AppointmentStatusUpdateBottomCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onUpdate,
    this.child = const Divider(),
    required this.buttonText,
    this.buttonColor = Colors.green,
    this.height = 370,
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
              Icon(
                Icons.published_with_changes,
                size: 50,
                color: buttonColor,
              ),
              const SizedBox(height: 20),
              Text(
                "$buttonText Appointment",
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Are you sure you want to $buttonText this appointment?",
                textAlign: TextAlign.center,
                textScaleFactor: 1.1,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              child,
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: onUpdate,
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
