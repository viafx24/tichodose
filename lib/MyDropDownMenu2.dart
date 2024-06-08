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
  final TextEditingController iconController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textDropdown1 = context.watch<MyVariableToListen>().textDropdown1;
    return DropdownMenu(
      initialSelection: null,
      controller: iconController,
      enableFilter: true,
      // requestFocusOnTap is enabled/disabled by platforms when it is null.
      // On mobile platforms, this is false by default. Setting this to true will
      // trigger focus request on the text field and virtual keyboard will appear
      // afterward. On desktop platforms however, this defaults to true.
      requestFocusOnTap: true,
      width: width,
      label: const Text("Choisir un animal/dosage"),
      onSelected: (newValue) {
        context.read<MyVariableToListen>().settextDropdown2(newValue);
      },

      dropdownMenuEntries:
          MyMapMedocs[textDropdown1]!
              .map
              .keys
              .map<DropdownMenuEntry>((value) {
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