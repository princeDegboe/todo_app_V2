import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app_flutter/widgets/text_form_field_card.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formkey = GlobalKey<FormState>();
  TimeOfDay selectedBeginTime = TimeOfDay.now();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descrController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedEndTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ajouter une tache",
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormFieldCard(
                labelText: "Titre",
                controller: _titleController,
              ),
              const SizedBox(height: 10),
              TextFormFieldCard(
                labelText: "Description",
                controller: _descrController,
              ),
              const SizedBox(height: 10),
              TextFormFieldCard(
                hintText: DateFormat('dd/MM/yyyy').format(selectedDate),
                readOnly: true,
                suffixIcon: IconButton(
                  onPressed: () async {
                    final DateTime? date = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2030),
                    );
                    if (date != null) {
                      setState(() {
                        selectedDate = date;
                      });
                    }
                  },
                  icon: const Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Heure de début",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.black),
                        ),
                        TextFormFieldCard(
                          readOnly: true,
                          hintText:
                              "${selectedBeginTime.hour}:${selectedBeginTime.minute}",
                          suffixIcon: IconButton(
                            onPressed: () async {
                              final TimeOfDay? timeOfDay = await showTimePicker(
                                context: context,
                                initialTime: selectedBeginTime,
                                initialEntryMode: TimePickerEntryMode.dial,
                              );
                              if (timeOfDay != null) {
                                setState(() {
                                  selectedBeginTime = timeOfDay;
                                });
                              }
                            },
                            icon: const Icon(Icons.access_time),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Heure de fin",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.black),
                        ),
                        TextFormFieldCard(
                          readOnly: true,
                          hintText:
                              "${selectedEndTime.hour}:${selectedEndTime.minute}",
                          suffixIcon: IconButton(
                            onPressed: () async {
                              final TimeOfDay? timeOfDay = await showTimePicker(
                                context: context,
                                initialTime: selectedEndTime,
                                initialEntryMode: TimePickerEntryMode.dial,
                              );
                              if (timeOfDay != null) {
                                setState(() {
                                  selectedEndTime = timeOfDay;
                                });
                              }
                            },
                            icon: const Icon(Icons.access_time),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Quitter",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text("Enregistrer"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
