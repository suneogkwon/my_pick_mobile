part of '../create_game_screen.dart';

class _TitleField extends StatelessWidget {
  const _TitleField({required this.formDataNotifier});

  final ValueNotifier<GameFormEntity> formDataNotifier;

  @override
  Widget build(BuildContext context) {
    return LabelField(
      label: '제목',
      child: TextFormField(
        initialValue: formDataNotifier.value.title,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: '10자 이내로 입력하세요',
          counter: SizedBox(),
        ),
        onSaved:
            (value) =>
                formDataNotifier.value = formDataNotifier.value.copyWith(
                  title: value,
                ),
        validator: (value) {
          value = value?.trim();

          if (value == null || value.isEmpty) {
            return '제목을 입력해주세요';
          } else if (value.length > 10) {
            return '10자 이내로 입력해주세요';
          } else if (value.length < 2) {
            return '2자 이상 입력해주세요';
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class _DescriptionField extends StatelessWidget {
  const _DescriptionField({required this.formDataNotifier});

  final ValueNotifier<GameFormEntity> formDataNotifier;

  @override
  Widget build(BuildContext context) {
    return LabelField(
      label: '설명',
      child: TextFormField(
        initialValue: formDataNotifier.value.description,
        maxLength: 30,
        decoration: InputDecoration(
          hintText: '30자 이내로 입력하세요',
          counter: SizedBox(),
        ),
        onSaved:
            (value) =>
                formDataNotifier.value = formDataNotifier.value.copyWith(
                  description: value,
                ),
        validator: (value) {
          value = value?.trim();

          if (value != null && value.length > 30) {
            return '30자 이내로 입력해주세요';
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class _ItemListField extends StatelessWidget {
  const _ItemListField({required this.formDataNotifier});

  final ValueNotifier<GameFormEntity> formDataNotifier;

  Future<void> _addImages() async {
    final imagePicker = ImagePicker();
    final images = await imagePicker.pickMultiImage(imageQuality: 80);

    if (images.isEmpty) {
      return;
    }

    formDataNotifier.value = formDataNotifier.value.copyWith(
      items: [
        ...?formDataNotifier.value.items,
        for (final image in images)
          GameItemFormEntity(id: image.path, image: File(image.path)),
      ],
    );
  }

  void _delete(GameItemFormEntity item) {
    formDataNotifier.value = formDataNotifier.value.copyWith(
      items:
          formDataNotifier.value.items?.where((e) => e.id != item.id).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LabelField(
        label: '항목',
        actions: [
          IconButton(
            onPressed: _addImages,
            icon: SvgPicture.asset(Assets.iconsPlus, width: 20),
          ),
        ],
        child: Expanded(
          child: SingleChildScrollView(
            child: HookBuilder(
              builder: (context) {
                final items = useListenableSelector(
                  formDataNotifier,
                  () => formDataNotifier.value.items ?? [],
                );

                return Column(
                  children: [
                    for (final item in items)
                      useAutomaticKeepAliveWidget(
                        child: ListTile(
                          key: ValueKey(item.id),
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 0,
                          title: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Container(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.grey.shade200,
                                      ),
                                      child: Image.memory(
                                        item.image!.readAsBytesSync(),
                                        fit: BoxFit.cover,
                                        height: constraints.maxWidth,
                                        width: constraints.maxWidth,
                                        errorBuilder:
                                            (context, url, error) => SizedBox(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Gap(8),
                              Expanded(
                                flex: 5,
                                child: TextField(
                                  maxLength: 30,
                                  decoration:
                                      InputDecoration(
                                        isDense: true,
                                        filled: true,
                                        fillColor: Colors.grey.shade50,
                                        hintText: '설명을 입력하세요',
                                        counter: SizedBox(),
                                      ).noBorder(),
                                ),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () => _delete(item),
                            icon: SvgPicture.asset(
                              Assets.iconsTrash,
                              colorFilter: ColorFilter.mode(
                                Colors.red.shade300,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
