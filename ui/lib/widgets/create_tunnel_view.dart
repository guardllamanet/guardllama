import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:guardllama_api/guardllama_api.dart';

import '../context.dart';
import 'widget_utils.dart';

class CreateTunnelView extends StatefulWidget {
  final void Function(V1Tunnel tun) tunnelAdded;
  final GlobalKey<FormState> formKey;

  const CreateTunnelView(
      {super.key, required this.formKey, required this.tunnelAdded});

  @override
  State<StatefulWidget> createState() => _CreateTunnelViewState();
}

class _CreateTunnelViewState extends State<CreateTunnelView> {
  final TextEditingController _nameController = TextEditingController();

  final _focusNode = FocusNode();

  String? _errorMessage;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            autofocus: true,
            controller: _nameController,
            focusNode: _focusNode,
            textInputAction: TextInputAction.go,
            onSaved: (_) => _createTunnel(context, _nameController.text),
            onFieldSubmitted: (_) =>
                _createTunnel(context, _nameController.text),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Tunnel Name',
              hintText: 'A new name will be generated if left empty.',
              errorMaxLines: 5,
            ),
            validator: (value) {
              if (value != null && value.isNotEmpty) {
                if (!WidgetUtils.validDns1123Subdomain(value)) {
                  return "Tunnel name must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character.";
                }
              }

              return _errorMessage;
            },
          ),
        ],
      ),
    );
  }

  _createTunnel(BuildContext context, String name) {
    ContextScope.of(context)
        .apiService
        .createTunnel(name)
        .then((tun) => _created(tun))
        .onError((DioError error, _) => _error(error));
  }

  _created(V1Tunnel tun) {
    _errorMessage = null;
    widget.formKey.currentState!.validate();

    widget.tunnelAdded(tun);
    Navigator.of(context).pop();
  }

  _error(DioError error) {
    _errorMessage = error.response!.data['message'];
    widget.formKey.currentState!.validate();
    _nameController.text = '';
    FocusScope.of(context).requestFocus(_focusNode);
  }
}
