import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef OnInputChanged = Function(String);

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.onInputChanged});

  final OnInputChanged? onInputChanged;

  @override
  Widget build(BuildContext context) => TextField(
        autofocus: true,
        onChanged: (value) => onInputChanged?.call(value),
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: AppLocalizations.of(context)?.search ?? '',
          hintStyle: const TextStyle(
            color: Colors.white60,
            fontSize: 20,
          ),
        ),
      );
}
