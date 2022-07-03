import 'package:flutter/material.dart';

class AppointmentStatusUpdateBottomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final Color buttonColor;
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
