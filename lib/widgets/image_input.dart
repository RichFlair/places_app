import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : const Text(
                  'No Image',
                  textAlign: TextAlign.center,
                ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.camera),
          label: const Text('Take Picture'),
        ),
      ],
    );
  }
}
