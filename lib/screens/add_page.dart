import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/models/list.dart'; // Pastikan impor model Anda
import 'package:project01_riz_todolist/widgets/headline_one.dart';
import 'package:project01_riz_todolist/widgets/headline_three.dart';
import 'package:project01_riz_todolist/widgets/my_Button.dart';
import 'package:project01_riz_todolist/widgets/my_textfiled.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart'; // Impor ColorPicker

class AddPage extends StatefulWidget {
  // Ganti StatelessWidget menjadi StatefulWidget
  AddPage({Key? key}) : super(key: key); // Tambahkan Key di sini

  @override
  _AddPageState createState() =>
      _AddPageState(); // Ganti build menjadi createState
}

class _AddPageState extends State<AddPage> {
  // Tambahkan _AddPageState untuk mengakses setState()
  Color selectedColor = Colors.blue; // Warna awal
  final _titleController = TextEditingController();
  final _notesController = TextEditingController();
  DateTime? _selectedDate;
  Priority?
      _selectedPriority; // Ganti tipe menjadi Priority? dan hapus inisialisasi dengan ListItem.priority

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadlineOne(text: "Add Task", colorText: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            // Task title
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 25), // Hapus const di sini
              child: HeadlineThree(text: "Task title", colorText: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            MyTextFiled(
                controller: _titleController,
                hintText: "e.g. Project FLutter",
                obsecureText: false),
            // Priority and date
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: HeadlineThree(
                  text: "Priority and Deadline", colorText: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  DropdownButton<Priority>(
                    value: _selectedPriority,
                    items: Priority.values.map((priority) {
                      return DropdownMenuItem<Priority>(
                        value: priority,
                        child: Text(priority.toString().split('.').last),
                      );
                    }).toList(),
                    onChanged: (Priority? value) {
                      // Ganti tipe menjadi Priority? di sini
                      if (value != null) {
                        setState(() {
                          _selectedPriority = value;
                        });
                      }
                    },
                  ),
                  Spacer(),
                  // Tampilan tanggal dan aksi pemilihan tanggal
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        _selectedDate == null
                            ? 'No date selected'
                            : formatter.format(_selectedDate!),
                      ),
                      IconButton(
                        onPressed: () async {
                          final pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year +
                                5), // Batas akhir 5 tahun dari sekarang
                          );
                          if (pickedDate != null) {
                            setState(() {
                              _selectedDate = pickedDate;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.calendar_today,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            // Notes
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 25), // Hapus const di sini
              child: HeadlineThree(text: "Notes", colorText: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            MyTextFiled(
              controller: _notesController,
              hintText: "List of the equipments",
              obsecureText: false,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              child:
                  HeadlineThree(text: "Color picker", colorText: Colors.black),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: selectedColor,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                'Choose a Color',
                                style: TextStyle(color: selectedColor),
                              ),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: selectedColor,
                                  onColorChanged: (color) {
                                    setState(() {
                                      selectedColor = color;
                                    });
                                  },
                                  showLabel: true, // Tampilkan label warna
                                  pickerAreaHeightPercent: 0.8, // Ukuran picker
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.color_lens),
                          SizedBox(width: 8),
                          Text(
                            'Choose Color',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Spacer(),
            // Button Save
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: MyButton(TextButton: "Save task", onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
