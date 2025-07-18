import 'package:check_in_app/utils/app_colors.dart';
import 'package:check_in_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CheckInDialog extends StatefulWidget {
  const CheckInDialog({super.key});

  @override
  State<CheckInDialog> createState() => _CheckInDialogState();
}

class _CheckInDialogState extends State<CheckInDialog> {
  String? _selectedProject;
  String? _selectedGate;
  String? _selectedWorkType = 'Budget';

  final List<String> _projects = ['Project A', 'Project B', 'Project C'];
  final List<String> _gates = ['Gate 1', 'Gate 2', 'Gate 3'];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.primaryDark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.dialogBackButton,
                    size: iconTheme.size,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              const SizedBox(height: 10),
              Center(child: Text('Check-in', style: textTheme.headlineLarge)),
              const SizedBox(height: 5),
              Center(
                child: Text('Select Check-in Type', style: textTheme.bodyLarge),
              ),
              const SizedBox(height: 30),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.boarderSideColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 120,
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.dialogWorkerCardBorder,
                            ),
                            color: AppColors.primaryDark,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/icons/worker.png",
                                height: 40,
                              ),
                              const SizedBox(height: 10),
                              Text('Worker', style: textTheme.titleLarge),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      _buildDropdownField(
                        label: 'Projects',
                        value: _selectedProject,
                        items: _projects,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedProject = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      _buildDropdownField(
                        label: 'Gates',
                        value: _selectedGate,
                        items: _gates,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedGate = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      Text('Select Work Type', style: textTheme.titleLarge),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile<String>(
                              title: Text(
                                'Budget',
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                ),
                              ),
                              value: 'Budget',
                              groupValue: _selectedWorkType,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedWorkType = value;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<String>(
                              title: Text(
                                'Issue',
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                ),
                              ),
                              value: 'Issue',
                              groupValue: _selectedWorkType,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedWorkType = value;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        height: 50,
                        labal: "Check-in",
                        ontap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField({
    required String label,
    required String? value,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.dropdownContainerBorder),
        color: AppColors.primaryDark,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(label, style: textTheme.bodyLarge),
          icon: Icon(Icons.keyboard_arrow_down, color: colorScheme.onSurface),
          isExpanded: true,
          items: items.map<DropdownMenuItem<String>>((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: textTheme.bodyLarge),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
