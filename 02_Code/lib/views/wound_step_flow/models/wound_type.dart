enum WoundTypeModel { woundOne }

extension WoundTypeExtension on WoundTypeModel {
  String get name {
    switch (this) {
      case WoundTypeModel.woundOne:
        return "Ulcus cruris venosum";
    }
  }
}
