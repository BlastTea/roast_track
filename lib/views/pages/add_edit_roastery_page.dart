part of 'pages.dart';

class AddEditRoasteryPage extends StatefulWidget {
  const AddEditRoasteryPage.add({super.key})
      : roastery = null,
        isAdd = true;

  const AddEditRoasteryPage.edit({
    super.key,
    required this.roastery,
  }) : isAdd = false;

  final User? roastery;
  final bool isAdd;

  @override
  State<AddEditRoasteryPage> createState() => _AddEditRoasteryPageState();
}

class _AddEditRoasteryPageState extends State<AddEditRoasteryPage> {
  @override
  void initState() {
    super.initState();
    MyApp.roasteryBloc.add(EditRoastery(value: widget.roastery ?? User()));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<RoasteryBloc, RoasteryState>(
        builder: (context, stateRoastery) {
          if (stateRoastery is RoasteryDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.isAdd ? 'Tambah roastery' : 'Edit roastery'),
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => MyApp.roasteryBloc.add(SaveRoasteryPressed()),
                label: const Text('Simpan'),
                icon: const Icon(Icons.save),
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  const SizedBox(height: 16.0),
                  TextField(
                    autofocus: widget.isAdd,
                    controller: stateRoastery.textControllerUsername,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    readOnly: !widget.isAdd,
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    autofocus: !widget.isAdd,
                    controller: stateRoastery.textControllerEmail,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: stateRoastery.textControllerPassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () => MyApp.roasteryBloc.add(ShowPasswordRoasteryPressed(value: !stateRoastery.isShowPassword)),
                        icon: stateRoastery.isShowPassword ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                      ),
                    ),
                    obscureText: !stateRoastery.isShowPassword,
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    // onEditingComplete: () => stateRoastery.focusNodeName.requestFocus(),
                    onEditingComplete: () => MyApp.roasteryBloc.add(SaveRoasteryPressed()),
                    textInputAction: TextInputAction.next,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () => MyApp.roasteryBloc.add(GeneratePasswordRoasteryPressed()),
                      child: const Text('Generate password'),
                    ),
                  ),
                  // const SizedBox(height: 8.0),
                  // TextField(
                  //   focusNode: stateRoastery.focusNodeName,
                  //   controller: stateRoastery.textControllerName,
                  //   decoration: const InputDecoration(
                  //     labelText: 'Nama',
                  //   ),
                  //   maxLength: 100,
                  //   buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                  //   textInputAction: TextInputAction.next,
                  // ),
                  // const SizedBox(height: 8.0),
                  // ConstrainedBox(
                  //   constraints: const BoxConstraints(
                  //     maxHeight: kMaximumDescriptionHeight,
                  //   ),
                  //   child: TextField(
                  //     controller: stateRoastery.textControllerAddress,
                  //     decoration: const InputDecoration(
                  //       labelText: 'Alamat',
                  //     ),
                  //     maxLength: 255,
                  //     maxLines: null,
                  //   ),
                  // ),
                  // const SizedBox(height: 16.0),
                  // TextField(
                  //   controller: stateRoastery.textControllerPhoneNumber,
                  //   decoration: const InputDecoration(
                  //     labelText: 'Nomor telepon',
                  //   ),
                  //   maxLength: 13,
                  //   inputFormatters: [textFormatterDigitsOnly],
                  //   keyboardType: TextInputType.number,
                  //   textInputAction: TextInputAction.next,
                  // ),
                  // const SizedBox(height: 16.0),
                  // ConstrainedBox(
                  //   constraints: const BoxConstraints(
                  //     maxHeight: kMaximumDescriptionHeight,
                  //   ),
                  //   child: TextField(
                  //     controller: stateRoastery.textControllerDescription,
                  //     decoration: const InputDecoration(
                  //       labelText: 'Deskripsi',
                  //     ),
                  //     maxLength: 255,
                  //     maxLines: null,
                  //   ),
                  // ),
                  const SizedBox(height: kBottomFabPadding),
                ],
              ),
            );
          } else if (stateRoastery is RoasteryError) {
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.isAdd ? 'Tambah roastery' : 'Edit roastery'),
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.orderBloc.add(InitializeOrderData()),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(widget.isAdd ? 'Tambah roastery' : 'Edit roastery'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
