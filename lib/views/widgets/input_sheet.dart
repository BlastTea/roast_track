part of 'widgets.dart';

class InputSheet extends StatefulWidget {
  const InputSheet({
    super.key,
    this.initialText,
    this.saveText,
    this.decoration = const InputDecoration(),
  }) : _isNumber = false;

  const InputSheet.number({
    super.key,
    this.initialText,
    this.saveText,
    this.decoration = const InputDecoration(),
  }) : _isNumber = true;

  final String? initialText;
  final String? saveText;
  final InputDecoration? decoration;
  final bool _isNumber;

  @override
  State<InputSheet> createState() => _InputSheetState();
}

class _InputSheetState extends State<InputSheet> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.initialText)..addListener(() => setState(() {}));
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
              child: TextField(
                controller: _textController,
                autofocus: true,
                decoration: widget.decoration,
                inputFormatters: widget._isNumber ? [textFormatterDigitsOnly] : null,
                keyboardType: widget._isNumber ? TextInputType.number : null,
                onEditingComplete: () => NavigationHelper.back(_textController.text.trim()),
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
                  onPressed: () => NavigationHelper.back(_textController.text.trim()),
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
