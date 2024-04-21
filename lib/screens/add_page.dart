import 'package:flutter/material.dart';
import 'package:project01_riz_todolist/models/list.dart'; // Pastikan impor model Anda
import 'package:project01_riz_todolist/widgets/headline_one.dart';
import 'package:project01_riz_todolist/widgets/headline_three.dart';
import 'package:project01_riz_todolist/widgets/my_Button.dart';
import 'package:project01_riz_todolist/widgets/my_textfiled.dart';

class AddPage extends StatefulWidget {
  // Ganti StatelessWidget menjadi StatefulWidget
  AddPage({Key? key}) : super(key: key); // Tambahkan Key di sini

  @override
  _AddPageState createState() =>
      _AddPageState(); // Ganti build menjadi createState
}

class _AddPageState extends State<AddPage> {
  // Tambahkan _AddPageState untuk mengakses setState()

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
          Spacer(),
          // Button Save
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: MyButton(TextButton: "Save task", onTap: () {}),
          )
        ],
      )),
    );
  }
}
