import 'package:flutter/material.dart';
import 'package:form_valitation/FancyAppBar.dart';
import 'package:form_valitation/FormBody.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:FancyAppBar() ,
      body: FormBody() ,
    );
  }
}
