import 'package:flutter/material.dart';

class Inputauth extends StatelessWidget {
  const Inputauth(
      {super.key,
      required this.controller,
      required this.node,
       this.nextNode,
      required this.text,
      required this.iconData, required this.action, this.validator, required this.secure, required this.isNumber});
  final TextEditingController controller;
  final FocusNode node;
  final FocusNode? nextNode;
  final String text;
  final Icon iconData;
  final TextInputAction action;
  final String? Function(String?)? validator;
  final bool secure;
  final bool isNumber;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *.8,
      child: TextFormField(
        //enableSuggestions: false,
        // contextMenuBuilder: (context, editableTextState) {
      
        // },
        obscureText: secure,
        toolbarOptions: ToolbarOptions(
            copy: true, cut: false, selectAll: false, paste: false),
        controller: controller,
        focusNode: node,
        keyboardType:isNumber?TextInputType.number:TextInputType.text ,
        textInputAction: action,
        onFieldSubmitted: (v) {
          if (nextNode != null) {
            FocusScope.of(context).requestFocus(nextNode);
          }
        },
        validator: validator,
        decoration: InputDecoration(
            prefixIcon:IconButton(onPressed: (){
      
            }, icon: iconData),
            contentPadding:  const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(text)
              ),
               border:
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))
              ),
      
            
      ),
    );
  }
}
