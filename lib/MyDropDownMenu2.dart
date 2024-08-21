import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyVariableToListen.dart';
import 'MyMedicament.dart';

class MyDropDownMenu2 extends StatefulWidget {
  const MyDropDownMenu2({super.key});

  @override
  State<MyDropDownMenu2> createState() => _MyDropDownMenu2State();
}

class _MyDropDownMenu2State extends State<MyDropDownMenu2> {
  final TextEditingController dropDownMenu2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;

    final List<MyMedicament> filteredMedicament = mesMedocs
        .where((MyMedicament) => MyMedicament.categorie == textDropdown1)
        .toList();

    final List<String> filteredMedicamentString = filteredMedicament
        .map((MyMedicament) => MyMedicament.nameMedoc)
        .toList();

    filteredMedicamentString.sort();

    return DropdownMenu(
      key: ValueKey(textDropdown1),
      initialSelection: null,
      // controller: dropDownMenu2Controller,
      // enableFilter: true,
      //requestFocusOnTap: true,
      width: width,
      label: const Text("Choisir un médicament"),
      textStyle: const TextStyle(color:Color.fromARGB(255, 6, 42, 250)),
      onSelected: (newValue) {
        context.read<MyVariableToListen>().settextDropdown2(newValue);
        context.read<MyVariableToListen>().settextDropdown3(null);// David
        context.read<MyVariableToListen>().setPoids(null);
        context.read<MyVariableToListen>().setVolume(null);
      },
      dropdownMenuEntries:
          filteredMedicamentString.map<DropdownMenuEntry>((value) {
        return DropdownMenuEntry(
          value: value,
          label: value,
          style: MenuItemButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 6, 42, 250),
          // foregroundColor: test.color,
          )
        );
      }).toList(),
    );
  }
}
