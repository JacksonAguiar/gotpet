import 'package:flutter/material.dart';
import 'package:gopet/core/app.text.dart';

class BasicInfoForm {
  List<Widget> form(BuildContext context) {
    return [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nome completo",
            style: AppTextStyles.semiBold(13),
          ),
          TextField(
            style: AppTextStyles.semiBold(18),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 12),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "E-mail",
            style: AppTextStyles.semiBold(13),
          ),
          TextField(
            style: AppTextStyles.semiBold(18),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 12),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Número de telefone",
            style: AppTextStyles.semiBold(13),
          ),
          TextField(
            style: AppTextStyles.semiBold(18),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 12),
            ),
          ),
        ],
      ),
      Column(
        children: [
          RadioListTile(
            contentPadding: const EdgeInsets.all(0),
            value: "m",
            title: const Text("Eu sou um homem"),
            groupValue: "m",
            onChanged: (value) {},
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.all(0),
            value: "f",
            title: const Text("Eu sou uma mulher"),
            groupValue: "m",
            onChanged: (value) {},
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.all(0),
            value: "n",
            title: const Text("Prefiro não responder"),
            groupValue: "gender",
            onChanged: (value) {},
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Data de nascimento",
            style: AppTextStyles.semiBold(13),
          ),
          TextField(
            // controller: dateInput,
            style: AppTextStyles.semiBold(18),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 12),
              suffixIcon: Icon(Icons.calendar_month_rounded),
            ),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime.now());

              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000

              } else {}
            },
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Código postal",
            style: AppTextStyles.semiBold(13),
          ),
          TextField(
            style: AppTextStyles.semiBold(18),
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 12),
            ),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Endereço",
            style: AppTextStyles.semiBold(13),
          ),
          TextField(
            style: AppTextStyles.semiBold(18),
            // textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 15, bottom: 12),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Estado",
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
            "Cidade",
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
        ],
      ),
    ];
  }
}
