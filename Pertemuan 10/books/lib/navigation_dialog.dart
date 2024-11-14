import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700; // Default color is blue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Lintang Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  // Method to show the dialog and capture the selected color
  _showColorDialog(BuildContext context) async {
    // Display the dialog and wait for the result (selected color)
    Color? selectedColor = await showDialog(
      barrierDismissible:
          false, // Make sure user can't dismiss the dialog by tapping outside
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Lilac'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromRGBO(186, 104, 200, 1)); // Lilac
              },
            ),
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromRGBO(255, 255, 102, 1)); // Yellow
              },
            ),
            TextButton(
              child: const Text('Pastel'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromRGBO(255, 204, 204, 1)); // Pastel
              },
            ),
          ],
        );
      },
    );

    // If a color was selected, update the background color
    if (selectedColor != null) {
      setState(() {
        color = selectedColor; // Update the background color
      });
    }
  }
}
