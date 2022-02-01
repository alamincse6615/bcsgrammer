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