class EventDetailsModel {
  Id? iId;
  dynamic id;
  dynamic uid;
  dynamic status;
  dynamic companyId;
  dynamic createdDate;
  dynamic createdBy;
  dynamic updatedDate;
  dynamic updatedBy;
  dynamic name;
  dynamic description;
  dynamic placesToStay;
  dynamic locationName;
  dynamic address1;
  dynamic city;
  dynamic stateProvince;
  dynamic country;
  dynamic postalCode;
  dynamic latitude;
  dynamic longitude;
  dynamic summaryPicture;
  dynamic detailPicture;
  List<dynamic>? media;
  dynamic startDateTime;
  dynamic endDateTime;
  dynamic endOrStartDateTime;
  dynamic timezone;
  dynamic canonicalUrl;
  List<dynamic>? attendanceModes;
  dynamic eventType;
  dynamic category1;
  dynamic category2;
  dynamic categories;
  List<dynamic>? searchTags;
  dynamic ticketTermsAndConditions;
  dynamic ticketBuyingInstructions;
  List<TicketAdditionalFields>? ticketAdditionalFields;
  dynamic visibility;
  dynamic liveStream;
  dynamic liveVideoUrl;
  dynamic liveVideoUploadUrl;
  dynamic liveStreamId;
  dynamic liveStreamServerAddress;
  dynamic rsvpRequired;
  List<Contacts>? contacts;
  List<SponsorCategories>? sponsorCategories;
  List<TicketCategories>? ticketCategories;
  List<dynamic>? potluckItems;
  List<dynamic>? timeSlots;
  List<dynamic>? sponsors;
  List<dynamic>? giftItems;
  List<dynamic>? honoraryGuests;
  List<dynamic>? boothCategories;
  dynamic fundRaisingEvent;
  dynamic likes;
  dynamic shares;
  dynamic detailViews;
  dynamic featured;
  dynamic attendanceMode;
  dynamic fundrisingEvent;
  dynamic nonProfitEvent;
  dynamic govtBodyEvent;

  EventDetailsModel(
      {this.iId,
      this.id,
      this.uid,
      this.status,
      this.companyId,
      this.createdDate,
      this.createdBy,
      this.updatedDate,
      this.updatedBy,
      this.name,
      this.description,
      this.placesToStay,
      this.locationName,
      this. potluckItems,
      this.timeSlots,
      this.honoraryGuests,
      this.giftItems,
      this.address1,
      this.city,
      this.stateProvince,
      this.country,
      this.sponsors,
      this.postalCode,
      this.latitude,
      this.longitude,
      this.summaryPicture,
      this.detailPicture,
      this.media,
      this.startDateTime,
      this.endDateTime,
      this.endOrStartDateTime,
      this.timezone,
      this.canonicalUrl,
      this.attendanceModes,
      this.eventType,
      this.category1,
      this.category2,
      this.categories,
      this.searchTags,
      this.ticketTermsAndConditions,
      this.ticketBuyingInstructions,
      this.ticketAdditionalFields,
      this.visibility,
      this.liveStream,
      this.liveVideoUrl,
      this.liveVideoUploadUrl,
      this.liveStreamId,
      this.liveStreamServerAddress,
      this.boothCategories,
      this.rsvpRequired,
      this.contacts,
      this.sponsorCategories,
      this.ticketCategories,
      this.fundRaisingEvent,
      this.likes,
      this.shares,
      this.detailViews,
      this.featured,
      this.attendanceMode,
      this.fundrisingEvent,
      this.nonProfitEvent,
      this.govtBodyEvent});

  EventDetailsModel.fromJson(Map<dynamic, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    id = json['id'];
    uid = json['uid'];
    status = json['status'];
    companyId = json['companyId'];
    createdDate = json['createdDate'];
    createdBy = json['createdBy'];
    updatedDate = json['updatedDate'];
    updatedBy = json['updatedBy'];
    name = json['name'];
    placesToStay = json['placesToStay'];
    description = json['description'];
    potluckItems = json['potluckItems'];
    timeSlots = json['timeSlots'];
    honoraryGuests = json['honoraryGuests'];
    sponsors = json['sponsors'];
    giftItems = json['giftItems'];
    locationName = json['locationName'];
    address1 = json['address1'];
    city = json['city'];
    stateProvince = json['stateProvince'];
    country = json['country'];
    postalCode = json['postalCode'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    summaryPicture = json['summaryPicture'];
    detailPicture = json['detailPicture'];
    media = json['media'];
    startDateTime = json['startDateTime'];
    endDateTime = json['endDateTime'];
    endOrStartDateTime = json['endOrStartDateTime'];
    timezone = json['timezone'];
    canonicalUrl = json['canonicalUrl'];
    attendanceModes = json['attendanceModes'];
    boothCategories = json['boothCategories'];
    eventType = json['eventType'];
    category1 = json['category1'];
    category2 = json['category2'];
    categories = json['categories'];
    searchTags = json['searchTags'];
    ticketTermsAndConditions = json['ticketTermsAndConditions'];
    ticketBuyingInstructions = json['ticketBuyingInstructions'];
    if (json['ticketAdditionalFields'] != null) {
      ticketAdditionalFields = <TicketAdditionalFields>[];
      json['ticketAdditionalFields'].forEach((v) {
        ticketAdditionalFields!.add(new TicketAdditionalFields.fromJson(v));
      });
    }
    visibility = json['visibility'];
    liveStream = json['liveStream'];
    liveVideoUrl = json['liveVideoUrl'];
    liveVideoUploadUrl = json['liveVideoUploadUrl'];
    liveStreamId = json['liveStreamId'];
    liveStreamServerAddress = json['liveStreamServerAddress'];
    rsvpRequired = json['rsvpRequired'];
    if (json['contacts'] != null) {
      contacts = <Contacts>[];
      json['contacts'].forEach((v) {
        contacts!.add(new Contacts.fromJson(v));
      });
    }
    if (json['sponsorCategories'] != null) {
      sponsorCategories = <SponsorCategories>[];
      json['sponsorCategories'].forEach((v) {
        sponsorCategories!.add(new SponsorCategories.fromJson(v));
      });
    }
    if (json['ticketCategories'] != null) {
      ticketCategories = <TicketCategories>[];
      json['ticketCategories'].forEach((v) {
        ticketCategories!.add(new TicketCategories.fromJson(v));
      });
    }
    fundRaisingEvent = json['fundRaisingEvent'];
    likes = json['likes'];
    shares = json['shares'];
    detailViews = json['detailViews'];
    featured = json['featured'];
    attendanceMode = json['attendanceMode'];
    fundrisingEvent = json['fundrisingEvent'];
    nonProfitEvent = json['nonProfitEvent'];
    govtBodyEvent = json['govtBodyEvent'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId!.toJson();
    }
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['status'] = this.status;
    data['companyId'] = this.companyId;
    data['createdDate'] = this.createdDate;
    data['placesToStay'] = this.placesToStay;
    data['createdBy'] = this.createdBy;
    data['updatedDate'] = this.updatedDate;
    data['boothCategories'] = this.boothCategories;
    data['sponsors'] = this.sponsors;
    data['updatedBy'] = this.updatedBy;
    data['name'] = this.name;
    data['description'] = this.description;
    data['locationName'] = this.locationName;
    data['address1'] = this.address1;
    data['city'] = this.city;
    data['stateProvince'] = this.stateProvince;
    data['potluckItems'] = this.potluckItems;
    data['timeSlots'] = this.timeSlots;
    data['honoraryGuests'] = this.honoraryGuests;
    data['giftItems'] = this.giftItems;
    data['country'] = this.country;
    data['postalCode'] = this.postalCode;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['summaryPicture'] = this.summaryPicture;
    data['detailPicture'] = this.detailPicture;
    data['media'] = this.media;
    data['startDateTime'] = this.startDateTime;
    data['endDateTime'] = this.endDateTime;
    data['endOrStartDateTime'] = this.endOrStartDateTime;
    data['timezone'] = this.timezone;
    data['canonicalUrl'] = this.canonicalUrl;
    data['attendanceModes'] = this.attendanceModes;
    data['eventType'] = this.eventType;
    data['category1'] = this.category1;
    data['category2'] = this.category2;
    data['categories'] = this.categories;
    data['searchTags'] = this.searchTags;
    data['ticketTermsAndConditions'] = this.ticketTermsAndConditions;
    data['ticketBuyingInstructions'] = this.ticketBuyingInstructions;
    if (this.ticketAdditionalFields != null) {
      data['ticketAdditionalFields'] =
          this.ticketAdditionalFields!.map((v) => v.toJson()).toList();
    }
    data['visibility'] = this.visibility;
    data['liveStream'] = this.liveStream;
    data['liveVideoUrl'] = this.liveVideoUrl;
    data['liveVideoUploadUrl'] = this.liveVideoUploadUrl;
    data['liveStreamId'] = this.liveStreamId;
    data['liveStreamServerAddress'] = this.liveStreamServerAddress;
    data['rsvpRequired'] = this.rsvpRequired;
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.map((v) => v.toJson()).toList();
    }
    if (this.sponsorCategories != null) {
      data['sponsorCategories'] =
          this.sponsorCategories!.map((v) => v.toJson()).toList();
    }
    if (this.ticketCategories != null) {
      data['ticketCategories'] =
          this.ticketCategories!.map((v) => v.toJson()).toList();
    }
    data['fundRaisingEvent'] = this.fundRaisingEvent;
    data['likes'] = this.likes;
    data['shares'] = this.shares;
    data['detailViews'] = this.detailViews;
    data['featured'] = this.featured;
    data['attendanceMode'] = this.attendanceMode;
    data['fundrisingEvent'] = this.fundrisingEvent;
    data['nonProfitEvent'] = this.nonProfitEvent;
    data['govtBodyEvent'] = this.govtBodyEvent;
    return data;
  }
}

class Id {
  dynamic timestamp;
  dynamic date;

  Id({this.timestamp, this.date});

  Id.fromJson(Map<dynamic, dynamic> json) {
    timestamp = json['timestamp'];
    date = json['date'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['timestamp'] = this.timestamp;
    data['date'] = this.date;
    return data;
  }
}

class TicketAdditionalFields {
  dynamic companyId;
  dynamic fieldName;
  dynamic fieldType;
  dynamic required;
  dynamic selectOptions;
  List<dynamic>? options;

  TicketAdditionalFields(
      {this.companyId,
      this.fieldName,
      this.fieldType,
      this.required,
      this.selectOptions,
      this.options});

  TicketAdditionalFields.fromJson(Map<dynamic, dynamic> json) {
    companyId = json['companyId'];
    fieldName = json['fieldName'];
    fieldType = json['fieldType'];
    required = json['required'];
    selectOptions = json['selectOptions'];
    options = json['options'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['companyId'] = this.companyId;
    data['fieldName'] = this.fieldName;
    data['fieldType'] = this.fieldType;
    data['required'] = this.required;
    data['selectOptions'] = this.selectOptions;
    data['options'] = this.options;
    return data;
  }
}

class Contacts {
  dynamic uid;
  dynamic companyId;
  dynamic firstName;
  dynamic lastName;
  dynamic emailAddress;
  dynamic website;
  dynamic profilePic;
  dynamic name;
  dynamic status;
  dynamic createdDate;
  dynamic createdBy;

  Contacts(
      {this.uid,
      this.companyId,
      this.firstName,
      this.lastName,
      this.emailAddress,
      this.website,
      this.profilePic,
      this.name,
      this.status,
      this.createdDate,
      this.createdBy});

  Contacts.fromJson(Map<dynamic, dynamic> json) {
    uid = json['uid'];
    companyId = json['companyId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    emailAddress = json['emailAddress'];
    website = json['website'];
    profilePic = json['profilePic'];
    name = json['name'];
    status = json['status'];
    createdDate = json['createdDate'];
    createdBy = json['createdBy'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['uid'] = this.uid;
    data['companyId'] = this.companyId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['emailAddress'] = this.emailAddress;
    data['website'] = this.website;
    data['profilePic'] = this.profilePic;
    data['name'] = this.name;
    data['status'] = this.status;
    data['createdDate'] = this.createdDate;
    data['createdBy'] = this.createdBy;
    return data;
  }
}

class SponsorCategories {
  dynamic uid;
  dynamic status;
  dynamic companyId;
  dynamic createdDate;
  dynamic createdBy;
  dynamic name;
  dynamic description;
  dynamic currency;
  dynamic actualPrice;
  dynamic salePrice;
  dynamic totalCount;
  dynamic availableCount;
  dynamic imageUrl;
  dynamic statusMessage;

  SponsorCategories(
      {this.uid,
      this.status,
      this.companyId,
      this.createdDate,
      this.createdBy,
      this.name,
      this.description,
      this.currency,
      this.actualPrice,
      this.salePrice,
      this.totalCount,
      this.availableCount,
      this.imageUrl,
      this.statusMessage});

  SponsorCategories.fromJson(Map<dynamic, dynamic> json) {
    uid = json['uid'];
    status = json['status'];
    companyId = json['companyId'];
    createdDate = json['createdDate'];
    createdBy = json['createdBy'];
    name = json['name'];
    description = json['description'];
    currency = json['currency'];
    actualPrice = json['actualPrice'];
    salePrice = json['salePrice'];
    totalCount = json['totalCount'];
    availableCount = json['availableCount'];
    imageUrl = json['imageUrl'];
    statusMessage = json['statusMessage'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['uid'] = this.uid;
    data['status'] = this.status;
    data['companyId'] = this.companyId;
    data['createdDate'] = this.createdDate;
    data['createdBy'] = this.createdBy;
    data['name'] = this.name;
    data['description'] = this.description;
    data['currency'] = this.currency;
    data['actualPrice'] = this.actualPrice;
    data['salePrice'] = this.salePrice;
    data['totalCount'] = this.totalCount;
    data['availableCount'] = this.availableCount;
    data['imageUrl'] = this.imageUrl;
    data['statusMessage'] = this.statusMessage;
    return data;
  }
}

class TicketCategories {
  dynamic uid;
  dynamic status;
  dynamic companyId;
  dynamic createdDate;
  dynamic createdBy;
  dynamic name;
  dynamic currency;
  dynamic actualPrice;
  dynamic salePrice;
  dynamic totalCount;
  dynamic availableCount;
  dynamic inviteMessage;
  dynamic statusMessage;
  dynamic attendeeType;
  dynamic groupDiscountCount;
  dynamic groupDiscountPercentage;
  dynamic groupDiscountPricePerTicket;

  TicketCategories(
      {this.uid,
      this.status,
      this.companyId,
      this.createdDate,
      this.createdBy,
      this.name,
      this.currency,
      this.actualPrice,
      this.salePrice,
      this.totalCount,
      this.availableCount,
      this.inviteMessage,
      this.statusMessage,
      this.attendeeType,
      this.groupDiscountCount,
      this.groupDiscountPercentage,
      this.groupDiscountPricePerTicket});

  TicketCategories.fromJson(Map<dynamic, dynamic> json) {
    uid = json['uid'];
    status = json['status'];
    companyId = json['companyId'];
    createdDate = json['createdDate'];
    createdBy = json['createdBy'];
    name = json['name'];
    currency = json['currency'];
    actualPrice = json['actualPrice'];
    salePrice = json['salePrice'];
    totalCount = json['totalCount'];
    availableCount = json['availableCount'];
    inviteMessage = json['inviteMessage'];
    statusMessage = json['statusMessage'];
    attendeeType = json['attendeeType'];
    groupDiscountCount = json['groupDiscountCount'];
    groupDiscountPercentage = json['groupDiscountPercentage'];
    groupDiscountPricePerTicket = json['groupDiscountPricePerTicket'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['uid'] = this.uid;
    data['status'] = this.status;
    data['companyId'] = this.companyId;
    data['createdDate'] = this.createdDate;
    data['createdBy'] = this.createdBy;
    data['name'] = this.name;
    data['currency'] = this.currency;
    data['actualPrice'] = this.actualPrice;
    data['salePrice'] = this.salePrice;
    data['totalCount'] = this.totalCount;
    data['availableCount'] = this.availableCount;
    data['inviteMessage'] = this.inviteMessage;
    data['statusMessage'] = this.statusMessage;
    data['attendeeType'] = this.attendeeType;
    data['groupDiscountCount'] = this.groupDiscountCount;
    data['groupDiscountPercentage'] = this.groupDiscountPercentage;
    data['groupDiscountPricePerTicket'] = this.groupDiscountPricePerTicket;
    return data;
  }
}
