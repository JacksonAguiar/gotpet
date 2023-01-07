import 'package:flutter/material.dart';
import 'package:gopet/components/CustomSubmitButton/widget.dart';
import 'package:gopet/core/app.images.dart';
import 'package:gopet/core/app.text.dart';

class BankSignUpScreen extends StatelessWidget {
  const BankSignUpScreen({super.key});

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
                'Terminando...',
                style: AppTextStyles.semiBold(28),
              ),
              Text('Quais são os dados bancários?',
                  style: AppTextStyles.semiBold(28)),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Agência",
                style: AppTextStyles.semiBold(13),
              ),
              TextField(
                style: AppTextStyles.semiBold(18),
                textInputAction: TextInputAction.next,
                readOnly: true,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 15, bottom: 12),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Conta",
                style: AppTextStyles.semiBold(13),
              ),
              TextField(
                style: AppTextStyles.semiBold(18),
                textInputAction: TextInputAction.next,
                readOnly: true,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(top: 15, bottom: 12),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Banco",
                style: AppTextStyles.semiBold(13),
              ),
              // DropdownSearch<String>(
              //       dropdownDecoratorProps: DropDownDecoratorProps(
              //         dropdownSearchDecoration: InputDecoration(
              //           fillColor: const Color(0xffF7F8F9),
              //           filled: true,
              //           hintStyle: AppTextStyles.medium(16,
              //               color: const Color(0xff8391A1).withOpacity(0.5)),
              //           enabledBorder: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(8),
              //               borderSide: const BorderSide(
              //                   color: Color(0xffE8ECF4), width: 1)),
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(8),
              //               borderSide: const BorderSide(
              //                   color: Color(0xffE8ECF4), width: 1)),
              //           hintText: 'Banco',
              //         ),
              //       ),
              //       compareFn: (i, s) => i.compareTo(s) == 0,
              //       popupProps: PopupProps.modalBottomSheet(
              //         showSelectedItems: true,
              //         showSearchBox: true,
              //         listViewProps:
              //             const ListViewProps(physics: BouncingScrollPhysics()),
              //         modalBottomSheetProps: const ModalBottomSheetProps(
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(25),
              //                     topRight: Radius.circular(25)))),
              //         itemBuilder: _customPopupItemBuilderExample2,
              //         containerBuilder: (context, popupWidget) => Padding(
              //           padding: const EdgeInsets.all(20),
              //           child: popupWidget,
              //         ),
              //         searchFieldProps: TextFieldProps(
              //           textInputAction: TextInputAction.search,
              //           decoration: InputDecoration(
              //             fillColor: const Color(0xffF7F8F9),
              //             filled: true,
              //             hintStyle: AppTextStyles.medium(16,
              //                 color: const Color(0xff8391A1).withOpacity(0.5)),
              //             enabledBorder: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(8),
              //                 borderSide: const BorderSide(
              //                     color: Color(0xffE8ECF4), width: 1)),
              //             suffixIcon: const Icon(Icons.search_rounded),
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(8),
              //                 borderSide: const BorderSide(
              //                     color: Color(0xffE8ECF4), width: 1)),
              //             hintText: 'Nome ou código do banco...',
              //           ),
              //         ),
              //         emptyBuilder: (context, searchEntry) => Center(
              //           child: Text(
              //             "$searchEntry não foi encontrado!",
              //             style: AppTextStyles.regular(14,
              //                 color: Colors.grey.shade400),
              //           ),
              //         ),
              //       ),
              //       onChanged: (value) => context
              //           .read<FinanceCubit>()
              //           .changeBankName(value ?? ""),
              //       selectedItem:
              //           bank_data.bank.isEmpty ? null : bank_data.bank,
              //       asyncItems: (text) =>
              //           context.read<FinanceCubit>().fetchBanks()),
              const Spacer(),
              CustomSubmitButtonWidget(
                  outline: false, onSubmit: () {}, title: "Salvar")
            ],
          ),
        ),
      ),
    );
  }
}
