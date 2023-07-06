import 'package:flutter/material.dart';
import '../show.dart';

class Modal implements Show {
  @override
  show(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (context) {
        return Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            text,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
