import 'package:flutter/material.dart';
import 'package:gopet/core/app.text.dart';

class CustomSubmitButtonWidget extends StatelessWidget {
  const CustomSubmitButtonWidget({
    Key? key,
    required this.onSubmit,
    this.loading = false,
    required this.title,
    this.loadingTitle = "",
    this.outline = false,
  }) : super(key: key);
  final VoidCallback onSubmit;
  final bool loading;
  final bool outline;
  final String title;
  final String loadingTitle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? null : onSubmit,
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: outline ? 0 : 2,
          shadowColor: Colors.grey,
          backgroundColor: outline ? Colors.grey.shade300 : Colors.black,
          fixedSize: const Size(double.maxFinite, 58)),
      child: Row(
        children: [
          if (loading)
            const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                  backgroundColor: Colors.white30,
                )),
          const Spacer(),
          Text(
            loading ? loadingTitle : title,
            style: outline
                ? AppTextStyles.regular(16, color: Colors.black87)
                : AppTextStyles.regular(16, color: Colors.white),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
