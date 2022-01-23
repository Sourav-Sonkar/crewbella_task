class User {
  Basic? basic;
  List<dynamic>? blogs;
  List<ClientPostings>? clientPostings;
  List<dynamic>? crewPostings;
  List<Events>? events;
  bool? isLoggedIn;
  List<Locations>? locations;
  List<Portfolio>? portfolio;
  List<Professions>? professions;
  List<Questions>? questions;
  List<dynamic>? skills;
  List<dynamic>? socialHubs;

  User(
      {this.basic,
      this.blogs,
      this.clientPostings,
      this.crewPostings,
      this.events,
      this.isLoggedIn,
      this.locations,
      this.portfolio,
      this.professions,
      this.questions,
      this.skills,
      this.socialHubs});

  User.fromJson(Map<String, dynamic> json) {
    if (json["basic"] is Map) {
      basic = json["basic"] == null ? null : Basic.fromJson(json["basic"]);
    }
    if (json["blogs"] is List) {
      blogs = json["blogs"] ?? [];
    }
    if (json["client_postings"] is List) {
      clientPostings = json["client_postings"] == null
          ? null
          : (json["client_postings"] as List)
              .map((e) => ClientPostings.fromJson(e))
              .toList();
    }
    if (json["crew_postings"] is List) {
      crewPostings = json["crew_postings"] ?? [];
    }
    if (json["events"] is List) {
      events = json["events"] == null
          ? null
          : (json["events"] as List).map((e) => Events.fromJson(e)).toList();
    }
    if (json["is_logged_in"] is bool) {
      isLoggedIn = json["is_logged_in"];
    }
    if (json["locations"] is List) {
      locations = json["locations"] == null
          ? null
          : (json["locations"] as List)
              .map((e) => Locations.fromJson(e))
              .toList();
    }
    if (json["portfolio"] is List) {
      portfolio = json["portfolio"] == null
          ? null
          : (json["portfolio"] as List)
              .map((e) => Portfolio.fromJson(e))
              .toList();
    }
    if (json["professions"] is List) {
      professions = json["professions"] == null
          ? null
          : (json["professions"] as List)
              .map((e) => Professions.fromJson(e))
              .toList();
    }
    if (json["questions"] is List) {
      questions = json["questions"] == null
          ? null
          : (json["questions"] as List)
              .map((e) => Questions.fromJson(e))
              .toList();
    }
    if (json["skills"] is List) {
      skills = json["skills"] ?? [];
    }
    if (json["social_hubs"] is List) {
      socialHubs = json["social_hubs"] ?? [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (basic != null) {
      data["basic"] = basic?.toJson();
    }
    if (blogs != null) {
      data["blogs"] = blogs;
    }
    if (clientPostings != null) {
      data["client_postings"] = clientPostings?.map((e) => e.toJson()).toList();
    }
    if (crewPostings != null) {
      data["crew_postings"] = crewPostings;
    }
    if (events != null) {
      data["events"] = events?.map((e) => e.toJson()).toList();
    }
    data["is_logged_in"] = isLoggedIn;
    if (locations != null) {
      data["locations"] = locations?.map((e) => e.toJson()).toList();
    }
    if (portfolio != null) {
      data["portfolio"] = portfolio?.map((e) => e.toJson()).toList();
    }
    if (professions != null) {
      data["professions"] = professions?.map((e) => e.toJson()).toList();
    }
    if (questions != null) {
      data["questions"] = questions?.map((e) => e.toJson()).toList();
    }
    if (skills != null) {
      data["skills"] = skills;
    }
    if (socialHubs != null) {
      data["social_hubs"] = socialHubs;
    }
    return data;
  }
}

class Questions {
  Answer? answer;
  String? createdAt;
  String? description;
  int? id;
  bool? me;
  String? title;

  Questions(
      {this.answer,
      this.createdAt,
      this.description,
      this.id,
      this.me,
      this.title});

  Questions.fromJson(Map<String, dynamic> json) {
    if (json["answer"] is Map) {
      answer = json["answer"] == null ? null : Answer.fromJson(json["answer"]);
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["me"] is bool) {
      me = json["me"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (answer != null) {
      data["answer"] = answer?.toJson();
    }
    data["created_at"] = createdAt;
    data["description"] = description;
    data["id"] = id;
    data["me"] = me;
    data["title"] = title;
    return data;
  }
}

class Answer {
  String? createdAt;
  String? description;
  int? id;

  Answer({this.createdAt, this.description, this.id});

  Answer.fromJson(Map<String, dynamic> json) {
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["created_at"] = createdAt;
    data["description"] = description;
    data["id"] = id;
    return data;
  }
}

class Professions {
  String? createdAt;
  int? experience;
  bool? forQuickbook;
  int? id;
  bool? isPrimary;
  QuickbookDetails? quickbookDetails;
  String? title;
  int? userId;

  Professions(
      {this.createdAt,
      this.experience,
      this.forQuickbook,
      this.id,
      this.isPrimary,
      this.quickbookDetails,
      this.title,
      this.userId});

  Professions.fromJson(Map<String, dynamic> json) {
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["experience"] is int) {
      experience = json["experience"];
    }
    if (json["for_quickbook"] is bool) {
      forQuickbook = json["for_quickbook"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["is_primary"] is bool) {
      isPrimary = json["is_primary"];
    }
    if (json["quickbook_details"] is Map) {
      quickbookDetails = json["quickbook_details"] == null
          ? null
          : QuickbookDetails.fromJson(json["quickbook_details"]);
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["created_at"] = createdAt;
    data["experience"] = experience;
    data["for_quickbook"] = forQuickbook;
    data["id"] = id;
    data["is_primary"] = isPrimary;
    if (quickbookDetails != null) {
      data["quickbook_details"] = quickbookDetails?.toJson();
    }
    data["title"] = title;
    data["user_id"] = userId;
    return data;
  }
}

class QuickbookDetails {
  bool? isActive;
  bool? isFlexible;
  List<dynamic>? portfoliosIds;
  int? rateAmount;
  String? rateCurrency;
  String? rateDuration;

  QuickbookDetails(
      {this.isActive,
      this.isFlexible,
      this.portfoliosIds,
      this.rateAmount,
      this.rateCurrency,
      this.rateDuration});

  QuickbookDetails.fromJson(Map<String, dynamic> json) {
    if (json["is_active"] is bool) {
      isActive = json["is_active"];
    }
    if (json["is_flexible"] is bool) {
      isFlexible = json["is_flexible"];
    }
    if (json["portfolios_ids"] is List) {
      portfoliosIds = json["portfolios_ids"] ?? [];
    }
    if (json["rate_amount"] is int) {
      rateAmount = json["rate_amount"];
    }
    if (json["rate_currency"] is String) {
      rateCurrency = json["rate_currency"];
    }
    if (json["rate_duration"] is String) {
      rateDuration = json["rate_duration"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["is_active"] = isActive;
    data["is_flexible"] = isFlexible;
    if (portfoliosIds != null) {
      data["portfolios_ids"] = portfoliosIds;
    }
    data["rate_amount"] = rateAmount;
    data["rate_currency"] = rateCurrency;
    data["rate_duration"] = rateDuration;
    return data;
  }
}

class Portfolio {
  String? createdAt;
  String? description;
  String? endedTime;
  int? id;
  List<Images>? images;
  String? link;
  String? position;
  String? projectName;
  String? startedTime;

  Portfolio(
      {this.createdAt,
      this.description,
      this.endedTime,
      this.id,
      this.images,
      this.link,
      this.position,
      this.projectName,
      this.startedTime});

  Portfolio.fromJson(Map<String, dynamic> json) {
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["ended_time"] is String) {
      endedTime = json["ended_time"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["images"] is List) {
      images = json["images"] == null
          ? null
          : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    }
    if (json["link"] is String) {
      link = json["link"];
    }
    if (json["position"] is String) {
      position = json["position"];
    }
    if (json["project_name"] is String) {
      projectName = json["project_name"];
    }
    if (json["started_time"] is String) {
      startedTime = json["started_time"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["created_at"] = createdAt;
    data["description"] = description;
    data["ended_time"] = endedTime;
    data["id"] = id;
    if (images != null) {
      data["images"] = images?.map((e) => e.toJson()).toList();
    }
    data["link"] = link;
    data["position"] = position;
    data["project_name"] = projectName;
    data["started_time"] = startedTime;
    return data;
  }
}

class Images {
  int? id;
  String? image;

  Images({this.id, this.image});

  Images.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["image"] = image;
    return data;
  }
}

class Locations {
  String? city;
  String? country;
  String? createdAt;
  int? id;
  bool? isPrimary;
  String? state;
  String? zipCode;

  Locations(
      {this.city,
      this.country,
      this.createdAt,
      this.id,
      this.isPrimary,
      this.state,
      this.zipCode});

  Locations.fromJson(Map<String, dynamic> json) {
    if (json["city"] is String) {
      city = json["city"];
    }
    if (json["country"] is String) {
      country = json["country"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["is_primary"] is bool) {
      isPrimary = json["is_primary"];
    }
    if (json["state"] is String) {
      state = json["state"];
    }
    if (json["zip_code"] is String) {
      zipCode = json["zip_code"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["city"] = city;
    data["country"] = country;
    data["created_at"] = createdAt;
    data["id"] = id;
    data["is_primary"] = isPrimary;
    data["state"] = state;
    data["zip_code"] = zipCode;
    return data;
  }
}

class Events {
  String? sku;
  String? theme;
  String? thumbnail;

  Events({this.sku, this.theme, this.thumbnail});

  Events.fromJson(Map<String, dynamic> json) {
    if (json["sku"] is String) {
      sku = json["sku"];
    }
    if (json["theme"] is String) {
      theme = json["theme"];
    }
    if (json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["sku"] = sku;
    data["theme"] = theme;
    data["thumbnail"] = thumbnail;
    return data;
  }
}

class ClientPostings {
  int? budget;
  String? budgetCc;
  String? createdAt;
  String? description;
  int? experience;
  int? id;
  bool? isActive;
  String? jobType;
  String? location;
  int? openings;
  String? profession;
  String? skills;
  String? timePeriod;
  String? timeStart;
  String? type;

  ClientPostings(
      {this.budget,
      this.budgetCc,
      this.createdAt,
      this.description,
      this.experience,
      this.id,
      this.isActive,
      this.jobType,
      this.location,
      this.openings,
      this.profession,
      this.skills,
      this.timePeriod,
      this.timeStart,
      this.type});

  ClientPostings.fromJson(Map<String, dynamic> json) {
    if (json["budget"] is int) {
      budget = json["budget"];
    }
    if (json["budget_cc"] is String) {
      budgetCc = json["budget_cc"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["experience"] is int) {
      experience = json["experience"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["is_active"] is bool) {
      isActive = json["is_active"];
    }
    if (json["job_type"] is String) {
      jobType = json["job_type"];
    }
    if (json["location"] is String) {
      location = json["location"];
    }
    if (json["openings"] is int) {
      openings = json["openings"];
    }
    if (json["profession"] is String) {
      profession = json["profession"];
    }
    if (json["skills"] is String) {
      skills = json["skills"];
    }
    if (json["time_period"] is String) {
      timePeriod = json["time_period"];
    }
    if (json["time_start"] is String) {
      timeStart = json["time_start"];
    }
    if (json["type_"] is String) {
      type = json["type_"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["budget"] = budget;
    data["budget_cc"] = budgetCc;
    data["created_at"] = createdAt;
    data["description"] = description;
    data["experience"] = experience;
    data["id"] = id;
    data["is_active"] = isActive;
    data["job_type"] = jobType;
    data["location"] = location;
    data["openings"] = openings;
    data["profession"] = profession;
    data["skills"] = skills;
    data["time_period"] = timePeriod;
    data["time_start"] = timeStart;
    data["type_"] = type;
    return data;
  }
}

class Basic {
  String? bio;
  String? cover;
  String? createdAt;
  String? dob;
  String? facebook;
  int? followings;
  String? fullname;
  String? image;
  String? imageHd;
  String? instagram;
  bool? isFollowing;
  bool? isVerified;
  bool? isWorking;
  String? linkedin;
  String? name;
  int? quickBookings;
  bool? quickbookVerified;
  int? strength;
  String? twitter;
  dynamic type;
  int? userId;
  String? username;
  int? visits;
  String? website;

  Basic(
      {this.bio,
      this.cover,
      this.createdAt,
      this.dob,
      this.facebook,
      this.followings,
      this.fullname,
      this.image,
      this.imageHd,
      this.instagram,
      this.isFollowing,
      this.isVerified,
      this.isWorking,
      this.linkedin,
      this.name,
      this.quickBookings,
      this.quickbookVerified,
      this.strength,
      this.twitter,
      this.type,
      this.userId,
      this.username,
      this.visits,
      this.website});

  Basic.fromJson(Map<String, dynamic> json) {
    if (json["bio"] is String) {
      bio = json["bio"];
    }
    if (json["cover"] is String) {
      cover = json["cover"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["dob"] is String) {
      dob = json["dob"];
    }
    if (json["facebook"] is String) {
      facebook = json["facebook"];
    }
    if (json["followings"] is int) {
      followings = json["followings"];
    }
    if (json["fullname"] is String) {
      fullname = json["fullname"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["image_hd"] is String) {
      imageHd = json["image_hd"];
    }
    if (json["instagram"] is String) {
      instagram = json["instagram"];
    }
    if (json["is_following"] is bool) {
      isFollowing = json["is_following"];
    }
    if (json["is_verified"] is bool) {
      isVerified = json["is_verified"];
    }
    if (json["is_working"] is bool) {
      isWorking = json["is_working"];
    }
    if (json["linkedin"] is String) {
      linkedin = json["linkedin"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["quick_bookings"] is int) {
      quickBookings = json["quick_bookings"];
    }
    if (json["quickbook_verified"] is bool) {
      quickbookVerified = json["quickbook_verified"];
    }
    if (json["strength"] is int) {
      strength = json["strength"];
    }
    if (json["twitter"] is String) {
      twitter = json["twitter"];
    }
    type = json["type_"];
    if (json["user_id"] is int) {
      userId = json["user_id"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["visits"] is int) {
      visits = json["visits"];
    }
    if (json["website"] is String) {
      website = json["website"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["bio"] = bio;
    data["cover"] = cover;
    data["created_at"] = createdAt;
    data["dob"] = dob;
    data["facebook"] = facebook;
    data["followings"] = followings;
    data["fullname"] = fullname;
    data["image"] = image;
    data["image_hd"] = imageHd;
    data["instagram"] = instagram;
    data["is_following"] = isFollowing;
    data["is_verified"] = isVerified;
    data["is_working"] = isWorking;
    data["linkedin"] = linkedin;
    data["name"] = name;
    data["quick_bookings"] = quickBookings;
    data["quickbook_verified"] = quickbookVerified;
    data["strength"] = strength;
    data["twitter"] = twitter;
    data["type_"] = type;
    data["user_id"] = userId;
    data["username"] = username;
    data["visits"] = visits;
    data["website"] = website;
    return data;
  }
}
