import 'package:alazkar/src/core/models/zikr.dart';
import 'package:alazkar/src/core/models/zikr_text_type.dart';
import 'package:flutter/material.dart';

List<Text> renderZikrItem(Zikr zikr) {
  return List.generate(zikr.body.length, (index) {
    final zikrText = zikr.body[index];
    if (zikrText.type == ZikrTextType.quran) {
      return Text(
        "« ${zikrText.text} »", // TODO: Fix to render quran correctly
        textAlign: TextAlign.center,

        style: const TextStyle(
          fontFamily: "Uthmanic",
          fontSize: 30,
          height: 1.5,
        ),
      );
    }

    // const String value = " ﷻ ﵃ ﵁ ابن عمر ﵁";
    return Text(
      zikrText.text, // TODO: Fix to render quran correctly
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: "Kitab",
        fontSize: 30,
        height: 2,
      ),
    );
  });
}
