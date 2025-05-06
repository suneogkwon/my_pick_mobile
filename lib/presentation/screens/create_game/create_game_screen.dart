import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/feature/game/domain/entities/game_form_entity.dart';
import 'package:my_pick/feature/game/domain/use_cases/create_game_use_case.dart';

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
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _buildInputField(
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
                          formDataNotifier.value = formDataNotifier.value
                              .copyWith(title: value),
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
              ),
              Gap(12),
              _buildInputField(
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
                          formDataNotifier.value = formDataNotifier.value
                              .copyWith(description: value),
                  validator: (value) {
                    value = value?.trim();

                    if (value != null && value.length > 30) {
                      return '30자 이내로 입력해주세요';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Gap(12),
              _buildInputField(
                label: '항목',
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ],
                child: Column(children: [Text('test')]),
              ),
            ],
          ),
          bottomNavigationBar: _SubmitButton(
            formDataNotifier: formDataNotifier,
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    List<Widget>? actions,
    required Widget child,
  }) {
    return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (actions != null)
              Row(
                children: [
                  Text(label, style: Theme.of(context).textTheme.titleMedium),
                  const Spacer(),
                  ...actions,
                ],
              )
            else
              Text(label, style: Theme.of(context).textTheme.titleMedium),
            Gap(4),
            child,
          ],
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({required this.formDataNotifier});

  final ValueNotifier<GameFormEntity> formDataNotifier;

  @override
  Widget build(BuildContext context) {
    return HookConsumer(
      builder: (context, ref, _) {
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
