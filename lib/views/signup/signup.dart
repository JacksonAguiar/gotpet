import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gopet/components/CustomSubmitButton/widget.dart';
import 'package:gopet/core/app.images.dart';
import 'package:gopet/core/app.text.dart';
import 'package:gopet/views/signup/basic_info.dart';
import 'package:gopet/views/signup/widgets/indicator_step.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final controller = PageController(initialPage: 0);
  final List<String> questions = [
    "Você é...",
    "Quais serviços você vai oferecer?",
    "Qual é o seu nome?",
    "Qual é o seu email...",
    "Me fala seu número de telefone...",
    "Qual é o seu gênero?",
    "Legal, Quando é seu aniversário?",
    "Qual é o código postal de sua residência?",
    "Seu endereço...",
  ];
  int _currentPage = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        _currentPage = controller.page?.toInt() ?? 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          highlightColor: Colors.white,
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          splashColor: Colors.white,
                          onTap: () => _currentPage == 0
                              ? Navigator.pop(context)
                              : controller.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut),
                          child: const Icon(Icons.arrow_back)),
                      const SizedBox(width: 20),
                      ProgressIndicatorStepWidget(
                          current: _currentPage.toDouble(),
                          max: questions.length.toDouble()),
                      const SizedBox(width: 30)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    questions[_currentPage],
                    style: AppTextStyles.semiBold(30),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  // pageSnapping: true,
                  children: [
                    Column(
                      children: [
                        RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          value: "p",
                          title: const Text("Eu sou um Profissional"),
                          subtitle: const Text(
                              "Ofererece serviços para cuidar de pet."),
                          groupValue: "p",
                          onChanged: (value) {},
                        ),
                        RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          value: "c",
                          title: const Text("Eu sou um cliente"),
                          subtitle: const Text(
                              "Está procura de alguem para cuidar de seu pet."),
                          groupValue: "m",
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    const SelectService(),
                    ...BasicInfoForm().form(context)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: CustomSubmitButtonWidget(
                    onSubmit: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    title: "Continuar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectService extends StatelessWidget {
  const SelectService({super.key});
  @override
  Widget build(BuildContext context) {
    final List<bool> selecteds = [true, false, false];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CarouselSlider(
            items: [
              CardServiceWidget(
                selected: selecteds[0],
                icon: AppImages.petWalking,
                colorSelected: Colors.white,
                bgSelected: Colors.black,
                title: "Passeio",
                description: "Passeios com o pet por hora.",
                format: 1,
                onTap: () {},
              ),
              CardServiceWidget(
                  selected: selecteds[1],
                  bgSelected: Colors.blue,
                  icon: AppImages.petWash,
                  colorSelected: Colors.white,
                  title: "Passeio",
                  description: "Passeios com o pet por hora.",
                  onTap: () {},
                  format: 2),
              CardServiceWidget(
                  bgSelected: Colors.orange,
                  onTap: () {},
                  selected: selecteds[2],
                  icon: AppImages.petHouse,
                  colorSelected: Colors.white,
                  title: "Passeio",
                  description: "Passeios com o pet por hora.",
                  format: 3),
            ],
            options: CarouselOptions(
              height: 350,
              // aspectRatio: 16 / 2,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            )),
      ],
    );
  }
}

class CardServiceWidget extends StatelessWidget {
  const CardServiceWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.selected,
    required this.colorSelected,
    required this.bgSelected,
    required this.format,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String description;
  final String icon;
  final bool selected;
  final Color colorSelected;
  final Color bgSelected;
  final int format;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            height: 360,
            width: 300,
            decoration: BoxDecoration(
                color: selected ? bgSelected : null,
                border: Border.fromBorderSide(BorderSide(
                    width: 2,
                    color: selected ? colorSelected : Colors.grey.shade400)),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              verticalDirection:
                  format == 2 ? VerticalDirection.up : VerticalDirection.down,
              children: [
                Expanded(
                  child: Align(
                    alignment: format == 1
                        ? Alignment.topLeft
                        : format == 2
                            ? Alignment.bottomRight
                            : Alignment.center,
                    child: SizedBox(
                      height: 230,
                      width: 230,
                      child: SvgPicture.asset(
                        icon,
                        color: selected ? colorSelected : Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: format == 1
                      ? Alignment.centerRight
                      : format == 2
                          ? Alignment.centerLeft
                          : Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: format == 1
                          ? CrossAxisAlignment.end
                          : format == 2
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.bold(
                            30,
                            color:
                                selected ? colorSelected : Colors.grey.shade400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          style: AppTextStyles.light(
                            14,
                            color:
                                selected ? colorSelected : Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // if (selected)
          //   Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15),
          //         // color: Colors.red,
          //         border: Border.fromBorderSide(
          //             BorderSide(width: 5, color: Colors.blue.shade400))),
          //   ),
          if (selected)
            Align(
              alignment: Alignment(0.95, -0.95),
              child: Icon(Icons.check_circle_rounded,
                  size: 50, color: Colors.blue.shade400),
            )
        ],
      ),
    );
  }
}
