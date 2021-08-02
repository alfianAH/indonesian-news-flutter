/// News Provider with its categories:
/// 1. cnn-news = ekonomi, gaya-hidup
/// 2. cnbc-news = market, investment, lifestyle
/// 3. antara-news = ekonomi, lifestyle
/// 4. okezone-news = economy, lifestyle
/// 5. tribun-news = bisnis, lifestyle

class NewsProviderListResponse {
  ListApi? listApi;
  String? author;
  String? source;

  NewsProviderListResponse({
      this.listApi, 
      this.author, 
      this.source});

  NewsProviderListResponse.fromJson(dynamic json) {
    listApi = json["listApi"];
    author = json["author"];
    source = json["source"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["listApi"] = listApi;
    map["author"] = author;
    map["source"] = source;
    return map;
  }

}

class ListApi {
  CNNNews? cnnNews;
  CNBCNews? cnbcNews;
  RepublikaNews? republikaNews;
  TempoNews? tempoNews;
  AntaraNews? antaraNews;
  OkezoneNews? okezoneNews;
  BBCNews? bbcNews;
  KumparanNews? kumparanNews;
  Liputan6News? liputan6News;
  TribunNews? tribunNews;

  ListApi({
      this.cnnNews, 
      this.cnbcNews, 
      this.republikaNews, 
      this.tempoNews, 
      this.antaraNews, 
      this.okezoneNews, 
      this.bbcNews, 
      this.kumparanNews, 
      this.liputan6News, 
      this.tribunNews});

  ListApi.fromJson(dynamic json) {
    cnnNews = json["CNN News"] != null ? CNNNews.fromJson(json["CNN News"]) : null;
    cnbcNews = json["CNBC News"] != null ? CNBCNews.fromJson(json["CNBCNews"]) : null;
    republikaNews = json["Republika News"] != null ? RepublikaNews.fromJson(json["Republika News"]) : null;
    tempoNews = json["Tempo News"] != null ? TempoNews.fromJson(json["Tempo News"]) : null;
    antaraNews = json["Antara News"] != null ? AntaraNews.fromJson(json["Antara News"]) : null;
    okezoneNews = json["Okezone News"] != null ? OkezoneNews.fromJson(json["Okezone News"]) : null;
    bbcNews = json["BBC News"] != null ? BBCNews.fromJson(json["BBC News"]) : null;
    kumparanNews = json["Kumparan News"] != null ? KumparanNews.fromJson(json["Kumparan News"]) : null;
    liputan6News = json["Liputan 6 News"] != null ? Liputan6News.fromJson(json["Liputan 6 News"]) : null;
    tribunNews = json["Tribun News"] != null ? TribunNews.fromJson(json["Tribun News"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (cnnNews != null) {
      map["CNN News"] = cnnNews?.toJson();
    }
    if (cnbcNews != null) {
      map["CNBC News"] = cnbcNews?.toJson();
    }
    if (republikaNews != null) {
      map["Republika News"] = republikaNews?.toJson();
    }
    if (tempoNews != null) {
      map["Tempo News"] = tempoNews?.toJson();
    }
    if (antaraNews != null) {
      map["Antara News"] = antaraNews?.toJson();
    }
    if (okezoneNews != null) {
      map["Okezone News"] = okezoneNews?.toJson();
    }
    if (bbcNews != null) {
      map["BBC News"] = bbcNews?.toJson();
    }
    if (kumparanNews != null) {
      map["Kumparan News"] = kumparanNews?.toJson();
    }
    if (liputan6News != null) {
      map["Liputan 6 News"] = liputan6News?.toJson();
    }
    if (tribunNews != null) {
      map["Tribun News"] = tribunNews?.toJson();
    }
    return map;
  }

}

class TribunNews {
  String? all;
  List<String>? listType;
  String? example;

  TribunNews({
      this.all, 
      this.listType, 
      this.example});

  TribunNews.fromJson(dynamic json) {
    all = json["all"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class Liputan6News {
  String? all;

  Liputan6News({
      this.all});

  Liputan6News.fromJson(dynamic json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    return map;
  }

}

class KumparanNews {
  String? all;

  KumparanNews({
      this.all});

  KumparanNews.fromJson(dynamic json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    return map;
  }

}

class BBCNews {
  String? all;
  List<String>? listType;
  String? example;

  BBCNews({
      this.all, 
      this.listType, 
      this.example});

  BBCNews.fromJson(dynamic json) {
    all = json["all"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class OkezoneNews {
  String? all;
  List<String>? listType;
  String? example;

  OkezoneNews({
      this.all, 
      this.listType, 
      this.example});

  OkezoneNews.fromJson(dynamic json) {
    all = json["all"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class AntaraNews {
  String? type;
  List<String>? listType;
  String? example;

  AntaraNews({
      this.type, 
      this.listType, 
      this.example});

  AntaraNews.fromJson(dynamic json) {
    type = json["type"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["type"] = type;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class TempoNews {
  String? all;
  String? type;
  List<String>? listType;
  String? example;

  TempoNews({
      this.all, 
      this.type, 
      this.listType, 
      this.example});

  TempoNews.fromJson(dynamic json) {
    all = json["all"];
    type = json["type"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["type"] = type;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class RepublikaNews {
  String? all;
  String? type;
  List<String>? listType;
  String? example;

  RepublikaNews({
      this.all, 
      this.type, 
      this.listType, 
      this.example});

  RepublikaNews.fromJson(dynamic json) {
    all = json["all"];
    type = json["type"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["type"] = type;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class CNBCNews {
  String? all;
  String? type;
  List<String>? listType;
  String? example;

  CNBCNews({
      this.all, 
      this.type, 
      this.listType, 
      this.example});

  CNBCNews.fromJson(dynamic json) {
    all = json["all"];
    type = json["type"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["type"] = type;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}

class CNNNews {
  String? all;
  String? type;
  List<String>? listType;
  String? example;

  CNNNews({
      this.all, 
      this.type, 
      this.listType, 
      this.example});

  CNNNews.fromJson(dynamic json) {
    all = json["all"];
    type = json["type"];
    listType = json["listType"] != null ? json["listType"].cast<String>() : [];
    example = json["example"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    map["type"] = type;
    map["listType"] = listType;
    map["example"] = example;
    return map;
  }

}