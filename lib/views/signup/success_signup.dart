import 'package:flutter/material.dart';
import 'package:gopet/components/CustomSubmitButton/widget.dart';
import 'package:gopet/core/app.images.dart';
import 'package:gopet/core/app.text.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Parabéns!',
                style: AppTextStyles.semiBold(28),
              ),
              Text('Sua conta está pronta🚀',
                  style: AppTextStyles.semiBold(28)),
              const Spacer(),
              Center(
                  child: Image.asset(AppImages.fireworksSuccess, width: 350)),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Adicione um método de pagamento e prepare o pet! Ou você pode fazer isso depois.',
                textAlign: TextAlign.center,
                style: AppTextStyles.light(14),
              ),
              const Spacer(),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              CustomSubmitButtonWidget(
                  onSubmit: () {}, title: "Adicionar método de pagamento"),
              const SizedBox(
                height: 20,
              ),
              CustomSubmitButtonWidget(
                  outline: true, onSubmit: () {}, title: "Pular esta estapa")
            ],
          ),
        ),
      ),
    );
  }
}
