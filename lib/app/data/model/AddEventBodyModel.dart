class AddEventBodyModel {
  String? uid;
  int? companyId;
  List<String>? attendanceModes;
  List<String>? searchTags;
  bool? liveStream;
  bool? rsvpRequired;
  List<Contacts>? contacts;
  bool? fundRaisingEvent;
  int? likes;
  int? shares;
  int? detailViews;
  bool? featured;
  bool? fundrisingEvent;
  bool? nonProfitEvent;
  bool? govtBodyEvent;
  String? name;
  String? description;
  String? locationName;
  String? postalCode;
  String? visibility;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  String? recurringRepeat;
  String? category1;
  String? category2;
  String? address1;
  String? city;
  String? stateProvince;
  String? country;
  String? latitude;
  String? longitude;
  String? startDateTime;
  String? endDateTime;

  AddEventBodyModel(
      {this.uid,
      this.companyId,
      this.attendanceModes,
      this.searchTags,
      this.liveStream,
      this.rsvpRequired,
      this.contacts,
      this.fundRaisingEvent,
      this.likes,
      this.shares,
      this.detailViews,
      this.featured,
      this.fundrisingEvent,
      this.nonProfitEvent,
      this.govtBodyEvent,
      this.name,
      this.description,
      this.locationName,
      this.postalCode,
      this.visibility,
      this.startDate,
      this.startTime,
      this.endDate,
      this.endTime,
      this.recurringRepeat,
      this.category1,
      this.category2,
      this.address1,
      this.city,
      this.stateProvince,
      this.country,
      this.latitude,
      this.longitude,
      this.startDateTime,
      this.endDateTime});

  AddEventBodyModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    companyId = json['companyId'];
    attendanceModes = json['attendanceModes'].cast<String>();
    searchTags = json['searchTags'].cast<String>();
    liveStream = json['liveStream'];
    rsvpRequired = json['rsvpRequired'];
    if (json['contacts'] != null) {
      contacts = <Contacts>[];
      json['contacts'].forEach((v) {
        contacts!.add(new Contacts.fromJson(v));
      });
    }
    fundRaisingEvent = json['fundRaisingEvent'];
    likes = json['likes'];
    shares = json['shares'];
    detailViews = json['detailViews'];
    featured = json['featured'];
    fundrisingEvent = json['fundrisingEvent'];
    nonProfitEvent = json['nonProfitEvent'];
    govtBodyEvent = json['govtBodyEvent'];
    name = json['name'];
    description = json['description'];
    locationName = json['locationName'];
    postalCode = json['postalCode'];
    visibility = json['visibility'];
    startDate = json['startDate'];
    startTime = json['startTime'];
    endDate = json['endDate'];
    endTime = json['endTime'];
    recurringRepeat = json['recurringRepeat'];
    category1 = json['category1'];
    category2 = json['category2'];
    address1 = json['address1'];
    city = json['city'];
    stateProvince = json['stateProvince'];
    country = json['country'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    startDateTime = json['startDateTime'];
    endDateTime = json['endDateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['companyId'] = this.companyId;
    data['attendanceModes'] = this.attendanceModes;
    data['searchTags'] = this.searchTags;
    data['liveStream'] = this.liveStream;
    data['rsvpRequired'] = this.rsvpRequired;
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.map((v) => v.toJson()).toList();
    }
    data['fundRaisingEvent'] = this.fundRaisingEvent;
    data['likes'] = this.likes;
    data['shares'] = this.shares;
    data['detailViews'] = this.detailViews;
    data['featured'] = this.featured;
    data['fundrisingEvent'] = this.fundrisingEvent;
    data['nonProfitEvent'] = this.nonProfitEvent;
    data['govtBodyEvent'] = this.govtBodyEvent;
    data['name'] = this.name;
    data['description'] = this.description;
    data['locationName'] = this.locationName;
    data['postalCode'] = this.postalCode;
    data['visibility'] = this.visibility;
    data['startDate'] = this.startDate;
    data['startTime'] = this.startTime;
    data['endDate'] = this.endDate;
    data['endTime'] = this.endTime;
    data['recurringRepeat'] = this.recurringRepeat;
    data['category1'] = this.category1;
    data['category2'] = this.category2;
    data['address1'] = this.address1;
    data['city'] = this.city;
    data['stateProvince'] = this.stateProvince;
    data['country'] = this.country;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['startDateTime'] = this.startDateTime;
    data['endDateTime'] = this.endDateTime;
    return data;
  }
}

class Contacts {
  int? companyId;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? emailAddress;
  String? name;

  Contacts(
      {this.companyId,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.emailAddress,
      this.name});

  Contacts.fromJson(Map<String, dynamic> json) {
    companyId = json['companyId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    emailAddress = json['emailAddress'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyId'] = this.companyId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phoneNumber'] = this.phoneNumber;
    data['emailAddress'] = this.emailAddress;
    data['name'] = this.name;
    return data;
  }
}
