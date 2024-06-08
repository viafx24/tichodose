import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';


class MyDropDownMenu1 extends StatefulWidget {
  const MyDropDownMenu1({super.key});

  @override
  State<MyDropDownMenu1> createState() => _MyDropDownMenu1State();
}

class _MyDropDownMenu1State extends State<MyDropDownMenu1> {
  final TextEditingController colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return DropdownMenu(
      initialSelection: null,
      controller: colorController,
      enableFilter: true,
      requestFocusOnTap: true,
      width: width,
      label: const Text("Choisir un médicament"),
      onSelected: (newValue) {
        
        context.read<MyVariableToListen>().settextDropdown1(newValue);
        context.read<MyVariableToListen>().settextDropdown2(null);
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
      },

      dropdownMenuEntries: MedocNames.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value,
          label: value,
          //style: MenuItemButton.styleFrom(
          // foregroundColor: test.color,
        );
      }).toList(),
    );
  }
}