import 'dart:io';

import 'package:ecom_admin/constants/image_picker.dart';
import 'package:ecom_admin/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddCategory extends StatefulWidget {
  AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController idController =
      TextEditingController(text: Uuid().v1());

  File? selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              //! id
              TextFieldForm(
                hintText: "Id",
                controller: idController,
              ),
              //!
              GestureDetector(
                onTap: () {
                  // final a = pickImageFromGallery();
                  final a =
                      ImagePicker().pickImage(source: ImageSource.gallery);
                },
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: 300,
                  child: selectedFile == null
                      ? Text("Select an image")
                      : Image.file(selectedFile!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
