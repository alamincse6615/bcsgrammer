class SubCategoryDetailsList {
  String? topicName;
  String? topicDetails;

  SubCategoryDetailsList({this.topicName, this.topicDetails});

  SubCategoryDetailsList.fromJson(Map<String, dynamic> json) {
    topicName = json['TopicName']??"";
    topicDetails = json['TopicDetails']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TopicName'] = this.topicName;
    data['TopicDetails'] = this.topicDetails;
    return data;
  }
}