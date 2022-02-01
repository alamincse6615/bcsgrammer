import 'package:bcsenglishgrammer/model/subcategorydetailslist.dart';

import 'grammermodel.dart';

class SubCategoryList {
  String? subCategoryName;
  String? subCategoryImage;
  List<SubCategoryDetailsList>? subCategoryDetailsList;

  SubCategoryList(
      {this.subCategoryName,
        this.subCategoryImage,
        this.subCategoryDetailsList});

  SubCategoryList.fromJson(Map<String, dynamic> json) {
    subCategoryName = json['subCategoryName'];
    subCategoryImage = json['subCategoryImage'];
    if (json['subCategoryDetailsList'] != null) {
      subCategoryDetailsList = <SubCategoryDetailsList>[];
      json['subCategoryDetailsList'].forEach((v) {
        subCategoryDetailsList!.add(new SubCategoryDetailsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subCategoryName'] = this.subCategoryName;
    data['subCategoryImage'] = this.subCategoryImage;
    if (this.subCategoryDetailsList != null) {
      data['subCategoryDetailsList'] =
          this.subCategoryDetailsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}