import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';

class MyDropDownMenu3 extends StatefulWidget {
  const MyDropDownMenu3({super.key});

  @override
  State<MyDropDownMenu3> createState() => _MyDropDownMenu3State();
}

class _MyDropDownMenu3State extends State<MyDropDownMenu3> {
  final TextEditingController dropDownMenu3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textDropdown2 = context.watch<MyVariableToListen>().textDropdown2;
    List mapMedocsKeys = myMapMedocs[textDropdown2]!.map.keys.toList();
    mapMedocsKeys.sort();

    return DropdownMenu(
      initialSelection: null,
      // controller: dropDownMenu3Controller,
      // enableFilter: true,
      // // requestFocusOnTap is enabled/disabled by platforms when it is null.
      // // On mobile platforms, this is false by default. Setting this to true will
      // // trigger focus request on the text field and virtual keyboard will appear
      // // afterward. On desktop platforms however, this defaults to true.
      requestFocusOnTap: true,
      width: width,
      label: const Text("Choisir un animal/dosage"),
      textStyle: const TextStyle(color:Colors.red),
      onSelected: (newValue) {
        context.read<MyVariableToListen>().settextDropdown3(newValue);
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
        if (context.read<MyVariableToListen>().inputTextController != null) {
        context.read<MyVariableToListen>().setInputText();
         }

      },

      dropdownMenuEntries:
          mapMedocsKeys.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value,
          label: value,
          style: MenuItemButton.styleFrom(
            foregroundColor: Colors.red,
          // foregroundColor: test.color,
          )
        );
      }).toList(),
    );
  }
}