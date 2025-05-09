import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_pick/core/constants/assets.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';
import 'package:my_pick/feature/game/domain/use_cases/create_game_use_case.dart';
import 'package:my_pick/presentation/util/decoration_util.dart';
import 'package:my_pick/presentation/util/hook_util.dart';
import 'package:my_pick/presentation/util/padding_util.dart';
import 'package:my_pick/presentation/widgets/common/field.dart';

part 'widgets/_field.dart';

class CreateGameScreen extends StatefulHookConsumerWidget {
  const CreateGameScreen({super.key});

  @override
  ConsumerState<CreateGameScreen> createState() => _CreateGameScreenState();
}

class _CreateGameScreenState extends ConsumerState<CreateGameScreen> {
  @override
  Widget build(BuildContext context) {
    final formDataNotifier = useValueNotifier(GameFormEntity());

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Form(
        child: Scaffold(
          appBar: AppBar(title: Text('게임 만들기')),
          body: Padding(
            padding: paddingH16,
            child: Column(
              children: [
                Gap(16),
                _TitleField(formDataNotifier: formDataNotifier),
                Gap(12),
                _DescriptionField(formDataNotifier: formDataNotifier),
                Gap(12),
                _ItemListField(formDataNotifier: formDataNotifier),
              ],
            ),
          ),
          bottomNavigationBar: _buildSummitButton(formDataNotifier),
        ),
      ),
    );
  }

  Widget _buildSummitButton(ValueNotifier<GameFormEntity> formDataNotifier) {
    return HookConsumer(
      builder: (context, ref, child) {
        final loading = useState(false);

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FilledButton(
              onPressed: () async {
                if (loading.value) {
                  return;
                } else {
                  loading.value = true;
                }

                FocusManager.instance.primaryFocus?.unfocus();

                final form = Form.of(context);
                if (form.validate()) {
                  form.save();
                  await ref.read(
                    createGameUseCaseProvider(formDataNotifier.value).future,
                  );
                }

                loading.value = false;
              },
              child:
                  loading.value ? CircularProgressIndicator() : Text('게임 만들기'),
            ),
          ),
        );
      },
    );
  }
}
