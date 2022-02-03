import 'package:bcsenglishgrammer/model/subcategorylist.dart';

class GrammarModel {
  String? categoryName;
  String? categoryImage;
  List<SubCategoryList>? subCategoryList;

  GrammarModel({this.categoryName, this.categoryImage, this.subCategoryList});

  GrammarModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName']??"";
    categoryImage = json['categoryImage']??"";
    if (json['subCategoryList'] != null) {
      subCategoryList = <SubCategoryList>[];
      json['subCategoryList'].forEach((v) {
        subCategoryList!.add(new SubCategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    if (this.subCategoryList != null) {
      data['subCategoryList'] =
          this.subCategoryList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}




