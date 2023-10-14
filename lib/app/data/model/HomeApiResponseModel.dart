class HomeApiResponseModel {
  HomeApiResponseModel({
    this.results,
    this.status,
    this.data,
    this.totalResultCount,
    this.currentPage,
    this.startIndex,
    this.endIndex,
    this.firstResult,
  });
  late final List<dynamic>? results;
  late final dynamic status;
  late final dynamic data;
  late final dynamic totalResultCount;
  late final dynamic currentPage;
  late final dynamic startIndex;
  late final dynamic endIndex;
  late final dynamic firstResult;

  HomeApiResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = List<Results>.from(json['results'].map((e) => Results.fromJson(e)));
    }
    status = Status.fromJson(json['status']);
    data = Data.fromJson(json['data']);
    totalResultCount = json['totalResultCount'];
    currentPage = json['currentPage'];
    startIndex = json['startIndex'];
    endIndex = json['endIndex'];
    firstResult = FirstResult.fromJson(json['firstResult']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (results != null) {
      _data['results'] = results!.map((e) => e.toJson()).toList();
    }
    _data['status'] = status?.toJson();
    _data['data'] = data?.toJson();
    _data['totalResultCount'] = totalResultCount;
    _data['currentPage'] = currentPage;
    _data['startIndex'] = startIndex;
    _data['endIndex'] = endIndex;
    _data['firstResult'] = firstResult?.toJson();
    return _data;
  }
}

class Results {
  dynamic id;
  dynamic uid;
  dynamic name;
  dynamic summaryPicture;
  dynamic startDateTime;
  dynamic endDateTime;
  dynamic description;
  dynamic status;
  dynamic detailUrl;
  dynamic canonicalUrl;
  dynamic visibility;
  dynamic attendanceMode;
  dynamic locationName;
  dynamic address1;
  dynamic city;
  dynamic category1;
  dynamic category2;
  dynamic price;
  dynamic likes;
  dynamic shares;
  dynamic createdDate;

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    name = json['name'];
    summaryPicture = json['summaryPicture'];
    startDateTime = json['startDateTime'];
    endDateTime = json['endDateTime'];
    description = json['description'];
    status = json['status'];
    detailUrl = json['detailUrl'];
    canonicalUrl = json['canonicalUrl'];
    visibility = json['visibility'];
    attendanceMode = json['attendanceMode'];
    locationName = json['locationName'];
    address1 = json['address1'];
    city = json['city'];
    category1 = json['category1'];
    category2 = json['category2'];
    price = json['price'];
    likes = json['likes'];
    shares = json['shares'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data['id'] = id;
    _data['uid'] = uid;
    _data['name'] = name;
    _data['summaryPicture'] = summaryPicture;
    _data['startDateTime'] = startDateTime;
    _data['endDateTime'] = endDateTime;
    _data['description'] = description;
    _data['status'] = status;
    _data['detailUrl'] = detailUrl;
    _data['canonicalUrl'] = canonicalUrl;
    _data['visibility'] = visibility;
    _data['attendanceMode'] = attendanceMode;
    _data['locationName'] = locationName;
    _data['address1'] = address1;
    _data['city'] = city;
    _data['category1'] = category1;
    _data['category2'] = category2;
    _data['price'] = price;
    _data['likes'] = likes;
    _data['shares'] = shares;
    _data['createdDate'] = createdDate;
    return _data;
  }
}

class Status {
  dynamic statusCode;
  dynamic statusLookupKey;
  dynamic statusDescription;
  Data? data;
  late List<dynamic> messages;
  dynamic success;

  Status.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusLookupKey = json['statusLookupKey'];
    statusDescription = json['statusDescription'];
    data = Data.fromJson(json['data']);
    messages = List<dynamic>.from(json['messages']);
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data['statusCode'] = statusCode;
    _data['statusLookupKey'] = statusLookupKey;
    _data['statusDescription'] = statusDescription;
    _data['data'] = data?.toJson();
    _data['messages'] = messages;
    _data['success'] = success;
    return _data;
  }
}

class Data {
  Data();

  Data.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    return _data;
  }
}

class FirstResult {
  dynamic id;
  dynamic uid;
  dynamic name;
  dynamic summaryPicture;
  dynamic startDateTime;
  dynamic endDateTime;
  dynamic description;
  dynamic status;
  dynamic detailUrl;
  dynamic canonicalUrl;
  dynamic visibility;
  dynamic attendanceMode;
  dynamic locationName;
  dynamic address1;
  dynamic city;
  dynamic category1;
  dynamic category2;
  dynamic price;
  dynamic likes;
  dynamic shares;
  dynamic createdDate;

  FirstResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    name = json['name'];
    summaryPicture = json['summaryPicture'];
    startDateTime = json['startDateTime'];
    endDateTime = json['endDateTime'];
    description = json['description'];
    status = json['status'];
    detailUrl = json['detailUrl'];
    canonicalUrl = json['canonicalUrl'];
    visibility = json['visibility'];
    attendanceMode = json['attendanceMode'];
    locationName = json['locationName'];
    address1 = json['address1'];
    city = json['city'];
    category1 = json['category1'];
    category2 = json['category2'];
    price = json['price'];
    likes = json['likes'];
    shares = json['shares'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data['id'] = id;
    _data['uid'] = uid;
    _data['name'] = name;
    _data['summaryPicture'] = summaryPicture;
    _data['startDateTime'] = startDateTime;
    _data['endDateTime'] = endDateTime;
    _data['description'] = description;
    _data['status'] = status;
    _data['detailUrl'] = detailUrl;
    _data['canonicalUrl'] = canonicalUrl;
    _data['visibility'] = visibility;
    _data['attendanceMode'] = attendanceMode;
    _data['locationName'] = locationName;
    _data['address1'] = address1;
    _data['city'] = city;
    _data['category1'] = category1;
    _data['category2'] = category2;
    _data['price'] = price;
    _data['likes'] = likes;
    _data['shares'] = shares;
    _data['createdDate'] = createdDate;
    return _data;
  }
}