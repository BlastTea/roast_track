part of 'widgets.dart';

class InputSheet extends StatefulWidget {
  const InputSheet({
    super.key,
    this.initialText,
    this.saveText,
    this.decoration = const InputDecoration(),
  })  : secondaryInitialText = null,
        secondaryDecoration = null,
        type = _InputSheetType.plain;

  const InputSheet.number({
    super.key,
    this.initialText,
    this.saveText,
    this.decoration = const InputDecoration(),
  })  : secondaryInitialText = null,
        secondaryDecoration = null,
        type = _InputSheetType.number;

  const InputSheet.doubleNumber({
    super.key,
    this.initialText,
    this.saveText,
    this.decoration,
    this.secondaryInitialText,
    this.secondaryDecoration,
  }) : type = _InputSheetType.doubleNumber;

  final String? initialText;
  final String? saveText;
  final InputDecoration? decoration;

  final String? secondaryInitialText;
  final InputDecoration? secondaryDecoration;

  final _InputSheetType type;

  @override
  State<InputSheet> createState() => _InputSheetState();
}

class _InputSheetState extends State<InputSheet> {
  late TextEditingController _textController;
  late TextEditingController _textControllerSecondary;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.initialText)..addListener(() => setState(() {}));
    _textControllerSecondary = TextEditingController(text: widget.secondaryInitialText)..addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kShapeExtraLarge),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _textController,
                    autofocus: true,
                    decoration: widget.decoration,
                    inputFormatters: [_InputSheetType.number, _InputSheetType.doubleNumber].contains(widget.type) ? [textFormatterDigitsOnly] : null,
                    keyboardType: [_InputSheetType.number, _InputSheetType.doubleNumber].contains(widget.type) ? TextInputType.number : null,
                    onEditingComplete: widget.type == _InputSheetType.doubleNumber ? null : () => NavigationHelper.back(_textController.text.trim()),
                    textInputAction: widget.type == _InputSheetType.doubleNumber ? TextInputAction.next : null,
                  ),
                  if (widget.type == _InputSheetType.doubleNumber) ...[
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _textControllerSecondary,
                      decoration: widget.secondaryDecoration,
                      inputFormatters: [_InputSheetType.number, _InputSheetType.doubleNumber].contains(widget.type) ? [textFormatterDigitsOnly] : null,
                      keyboardType: [_InputSheetType.number, _InputSheetType.doubleNumber].contains(widget.type) ? TextInputType.number : null,
                      onEditingComplete: () => NavigationHelper.back((_textController.text.trim(), _textControllerSecondary.text.trim())),
                    ),
                  ]
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => NavigationHelper.back(),
                  child: const Text('Batal'),
                ),
                const SizedBox(width: 8.0),
                TextButton(
                  onPressed: () => NavigationHelper.back(widget.type == _InputSheetType.doubleNumber ? (_textController.text.trim(), _textControllerSecondary.text.trim()) : _textController.text.trim()),
                  child: Text(widget.saveText ?? 'Simpan'),
                ),
                const SizedBox(width: 16.0),
              ],
            ),
            const SizedBox(height: 8.0),
            SizedBox(height: MediaQuery.viewInsetsOf(context).bottom),
          ],
        ),
      );
}

enum _InputSheetType {
  plain,
  number,
  doubleNumber,
}
