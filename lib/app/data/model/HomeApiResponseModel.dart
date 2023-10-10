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
    results =
        List.from(json['results']).map((e) => Results.fromJson(e)).toList();
    status = Status.fromJson(json['status']);
    data = Data.fromJson(json['data']);
    totalResultCount = json['totalResultCount'];
    currentPage = json['currentPage'];
    startIndex = json['startIndex'];
    endIndex = json['endIndex'];
    firstResult = FirstResult.fromJson(json['firstResult']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    if (_data['results'] != null) {
      results = <dynamic>[];
      _data['results'].forEach((v) {
        results!.add(v);
      });
    }
    _data['status'] = status.toJson();
    _data['data'] = data.toJson();
    _data['totalResultCount'] = totalResultCount;
    _data['currentPage'] = currentPage;
    _data['startIndex'] = startIndex;
    _data['endIndex'] = endIndex;
    _data['firstResult'] = firstResult.toJson();
    return _data;
  }
}

class Results {
  Results({
    required this.id,
    required this.uid,
    required this.name,
    required this.summaryPicture,
    required this.startDateTime,
    required this.endDateTime,
    required this.description,
    required this.status,
    required this.detailUrl,
    required this.canonicalUrl,
    required this.visibility,
    required this.attendanceMode,
    required this.locationName,
    required this.address1,
    required this.city,
    required this.category1,
    required this.category2,
    required this.price,
    required this.likes,
    required this.shares,
    required this.createdDate,
  });
  late final dynamic id;
  late final dynamic uid;
  late final dynamic name;
  late final dynamic summaryPicture;
  late final dynamic startDateTime;
  late final dynamic endDateTime;
  late final dynamic description;
  late final dynamic status;
  late final dynamic detailUrl;
  late final dynamic canonicalUrl;
  late final dynamic visibility;
  late final dynamic attendanceMode;
  late final dynamic locationName;
  late final dynamic address1;
  late final dynamic city;
  late final dynamic category1;
  late final dynamic category2;
  late final dynamic price;
  late final dynamic likes;
  late final dynamic shares;
  late final dynamic createdDate;

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
    final _data = <String, dynamic>{};
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
  Status({
    required this.statusCode,
    required this.statusLookupKey,
    required this.statusDescription,
    required this.data,
    required this.messages,
    required this.success,
  });
  late final dynamic statusCode;
  late final dynamic statusLookupKey;
  late final dynamic statusDescription;
  late final Data data;
  late final List<dynamic> messages;
  late final dynamic success;

  Status.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    statusLookupKey = json['statusLookupKey'];
    statusDescription = json['statusDescription'];
    data = Data.fromJson(json['data']);
    messages = List.castFrom<dynamic, dynamic>(json['messages']);
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['statusCode'] = statusCode;
    _data['statusLookupKey'] = statusLookupKey;
    _data['statusDescription'] = statusDescription;
    _data['data'] = data.toJson();
    _data['messages'] = messages;
    _data['success'] = success;
    return _data;
  }
}

class Data {
  Data();

  Data.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class FirstResult {
  FirstResult({
    required this.id,
    required this.uid,
    required this.name,
    required this.summaryPicture,
    required this.startDateTime,
    required this.endDateTime,
    required this.description,
    required this.status,
    required this.detailUrl,
    required this.canonicalUrl,
    required this.visibility,
    required this.attendanceMode,
    required this.locationName,
    required this.address1,
    required this.city,
    required this.category1,
    required this.category2,
    required this.price,
    required this.likes,
    required this.shares,
    required this.createdDate,
  });
  late final dynamic id;
  late final dynamic uid;
  late final dynamic name;
  late final dynamic summaryPicture;
  late final dynamic startDateTime;
  late final dynamic endDateTime;
  late final dynamic description;
  late final dynamic status;
  late final dynamic detailUrl;
  late final dynamic canonicalUrl;
  late final dynamic visibility;
  late final dynamic attendanceMode;
  late final dynamic locationName;
  late final dynamic address1;
  late final dynamic city;
  late final dynamic category1;
  late final dynamic category2;
  late final dynamic price;
  late final dynamic likes;
  late final dynamic shares;
  late final dynamic createdDate;

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
    final _data = <String, dynamic>{};
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
