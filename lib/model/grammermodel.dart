class GrammarModel {
  String? categoryName;
  String? categoryImage;
  List<SubCategoryList>? subCategoryList;

  GrammarModel({this.categoryName, this.categoryImage, this.subCategoryList});

  GrammarModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
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

class SubCategoryDetailsList {
  String? firstTopicName;
  String? firstTopicDetails;
  String? secondTopicName;
  String? secondTopicDetails;
  String? thirdTopicName;
  String? thirdTopicDetails;
  String? fourthTopicName;
  String? fourthTopicDetails;
  String? fifthTopicName;
  String? fifthTopicDetails;
  String? sixthTopicName;
  String? sixthTopicDetails;
  String? seventhTopicName;
  String? seventhTopicDetails;
  String? eighthTopicName;
  String? eighthTopicDetails;
  String? ninthTopicName;
  String? ninthTopicDetails;
  String? tenthTopicName;
  String? tenthTopicDetails;
  String? eleventhTopicName;
  String? eleventhTopicDetails;
  String? twelveTopicName;
  String? twelveTopicDetails;

  SubCategoryDetailsList(
      {this.firstTopicName,
        this.firstTopicDetails,
        this.secondTopicName,
        this.secondTopicDetails,
        this.thirdTopicName,
        this.thirdTopicDetails,
        this.fourthTopicName,
        this.fourthTopicDetails,
        this.fifthTopicName,
        this.fifthTopicDetails,
        this.sixthTopicName,
        this.sixthTopicDetails,
        this.seventhTopicName,
        this.seventhTopicDetails,
        this.eighthTopicName,
        this.eighthTopicDetails,
        this.ninthTopicName,
        this.ninthTopicDetails,
        this.tenthTopicName,
        this.tenthTopicDetails,
        this.eleventhTopicName,
        this.eleventhTopicDetails,
        this.twelveTopicName,
        this.twelveTopicDetails});

  SubCategoryDetailsList.fromJson(Map<String, dynamic> json) {
    firstTopicName = json['firstTopicName'];
    firstTopicDetails = json['firstTopicDetails'];
    secondTopicName = json['secondTopicName'];
    secondTopicDetails = json['secondTopicDetails'];
    thirdTopicName = json['thirdTopicName'];
    thirdTopicDetails = json['thirdTopicDetails'];
    fourthTopicName = json['fourthTopicName'];
    fourthTopicDetails = json['fourthTopicDetails'];
    fifthTopicName = json['fifthTopicName'];
    fifthTopicDetails = json['fifthTopicDetails'];
    sixthTopicName = json['sixthTopicName'];
    sixthTopicDetails = json['sixthTopicDetails'];
    seventhTopicName = json['seventhTopicName'];
    seventhTopicDetails = json['seventhTopicDetails'];
    eighthTopicName = json['eighthTopicName'];
    eighthTopicDetails = json['eighthTopicDetails'];
    ninthTopicName = json['ninthTopicName'];
    ninthTopicDetails = json['ninthTopicDetails'];
    tenthTopicName = json['tenthTopicName'];
    tenthTopicDetails = json['tenthTopicDetails'];
    eleventhTopicName = json['eleventhTopicName'];
    eleventhTopicDetails = json['eleventhTopicDetails'];
    twelveTopicName = json['twelveTopicName'];
    twelveTopicDetails = json['twelveTopicDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstTopicName'] = this.firstTopicName;
    data['firstTopicDetails'] = this.firstTopicDetails;
    data['secondTopicName'] = this.secondTopicName;
    data['secondTopicDetails'] = this.secondTopicDetails;
    data['thirdTopicName'] = this.thirdTopicName;
    data['thirdTopicDetails'] = this.thirdTopicDetails;
    data['fourthTopicName'] = this.fourthTopicName;
    data['fourthTopicDetails'] = this.fourthTopicDetails;
    data['fifthTopicName'] = this.fifthTopicName;
    data['fifthTopicDetails'] = this.fifthTopicDetails;
    data['sixthTopicName'] = this.sixthTopicName;
    data['sixthTopicDetails'] = this.sixthTopicDetails;
    data['seventhTopicName'] = this.seventhTopicName;
    data['seventhTopicDetails'] = this.seventhTopicDetails;
    data['eighthTopicName'] = this.eighthTopicName;
    data['eighthTopicDetails'] = this.eighthTopicDetails;
    data['ninthTopicName'] = this.ninthTopicName;
    data['ninthTopicDetails'] = this.ninthTopicDetails;
    data['tenthTopicName'] = this.tenthTopicName;
    data['tenthTopicDetails'] = this.tenthTopicDetails;
    data['eleventhTopicName'] = this.eleventhTopicName;
    data['eleventhTopicDetails'] = this.eleventhTopicDetails;
    data['twelveTopicName'] = this.twelveTopicName;
    data['twelveTopicDetails'] = this.twelveTopicDetails;
    return data;
  }
}
