/// Copyright (c) 2019, Fadhly Permata <fadhly.permata@gmail.com>
/// All rights reserved.
///
/// Redistribution and use in source and binary forms, with or without
/// modification, are permitted provided that the following conditions are met:
///
/// 1. Redistributions of source code must retain the above copyright notice, this
///    list of conditions and the following disclaimer.
/// 2. Redistributions in binary form must reproduce the above copyright notice,
///    this list of conditions and the following disclaimer in the documentation
///    and/or other materials provided with the distribution.
///
/// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
/// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
/// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
/// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
/// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
/// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
/// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
/// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
/// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
/// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
///
/// The views and conclusions contained in the software and documentation are those
/// of the authors and should not be interpreted as representing official policies,
/// either expressed or implied, of the MoneyTextFormField project.
///
///
/// =================================================================================
/// author  : Fadhly Permata
/// email   : fadhly.permata@gmail.com
/// github  : https://github.com/fadhly-permata/flutter_moneytextfieldform
/// pub     : https://pub.dartlang.org/packages/moneytextformfield
/// =================================================================================

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:moneytextformfield/src/models/money_format_settings.dart';
import 'package:moneytextformfield/src/models/appearance_settings.dart';

class MoneyTextFormFieldSettings {
  MoneyTextFormFieldSettings(
      {this.controller,
      this.validator,
      this.inputFormatters,
      this.onChanged,
      this.moneyFormatSettings,
      this.appearanceSettings,
      this.enabled = true});

  TextEditingController controller;
  FormFieldValidator<String> validator;
  List<TextInputFormatter> inputFormatters;
  VoidCallback onChanged;
  MoneyFormatSettings moneyFormatSettings;
  AppearanceSettings appearanceSettings;

  bool enabled;

  MoneyTextFormFieldSettings copyWith(
          {TextEditingController controller,
          FormFieldValidator<String> validator,
          List<TextInputFormatter> inputFormatters,
          VoidCallback onChanged,
          MoneyFormatSettings moneyFormatSettings,
          AppearanceSettings appearanceSettings,
          bool enabled}) =>
      MoneyTextFormFieldSettings()
        ..controller = controller ?? this.controller
        ..validator = validator ?? this.validator
        ..inputFormatters = inputFormatters ?? this.inputFormatters
        ..onChanged = onChanged ?? this.onChanged
        ..moneyFormatSettings = moneyFormatSettings ?? this.moneyFormatSettings
        ..appearanceSettings = appearanceSettings ?? this.appearanceSettings
        ..enabled = enabled ?? this.enabled;
}
