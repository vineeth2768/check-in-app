import 'package:check_in_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOtpField extends StatefulWidget {
  final void Function(String)? onSubmit;

  const CustomOtpField({super.key, this.onSubmit});

  @override
  State<CustomOtpField> createState() => _CustomOtpFieldState();
}

class _CustomOtpFieldState extends State<CustomOtpField> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index < 3) {
        _focusNodes[index + 1].requestFocus();
      }
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    // Submit OTP when all fields are filled
    String code = _controllers.map((c) => c.text).join();
    if (code.length == 4) {
      widget.onSubmit?.call(code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(4, (index) {
        return Container(
          width: 55,
          height: 55,
          margin: EdgeInsets.only(right: index == 3 ? 0 : 10),
          child: TextFormField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            maxLength: 1,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              counterText: '',
              filled: true,
              fillColor: AppColors.inputFieldBackground,
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.boarderSideColor),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.boarderSideColor),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: (value) => _onChanged(value, index),
          ),
        );
      }),
    );
  }
}
