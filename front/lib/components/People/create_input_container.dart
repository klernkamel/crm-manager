import 'package:flutter/material.dart';
import 'package:front/components/People/create_input_widget.dart';
import 'package:front/components/People/date_format.dart';
import 'package:front/inh/text_contr.inherit.dart';

class CreateInput extends StatelessWidget {
  CreateInput({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController name = context.dependOnInheritedWidgetOfExactType<TextContrInherited>()!.nameContr;
    final TextEditingController email = context.dependOnInheritedWidgetOfExactType<TextContrInherited>()!.emailContr;
    final TextEditingController phone = context.dependOnInheritedWidgetOfExactType<TextContrInherited>()!.phoneContr;
    final TextEditingController city = context.dependOnInheritedWidgetOfExactType<TextContrInherited>()!.cityContr;
    double w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        CreateInputWidget(width: w * 0.17, label: "People", contr: name,),
        CreateInputWidget(width: w * 0.161, label: "Email", contr: email,),
        CreateInputWidget(width: w * 0.161, label: "Phone", contr: phone,),
        Date(),
        CreateInputWidget(width: w * 0.15, label: "City", contr: city,),
      ],
    );
  }

}