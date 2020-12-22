class HomeContentModel {
  List<HomeBannerModel> banners;

  List<HomeGoodModel> goods;

  List<HomeCategoryModel> category;

  HomeContentModel({this.banners, this.goods, this.category});

  HomeContentModel.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = List<HomeBannerModel>();
      json['banners'].forEach((v) {
        banners.add(HomeBannerModel.fromJson(v));
      });
    }

    if (json['goods'] != null) {
      goods = List<HomeGoodModel>();
      json['goods'].forEach((v) {
        goods.add(HomeGoodModel.fromJson(v));
      });
    }

    if (json['category'] != null) {
      category = List<HomeCategoryModel>();
      json['category'].forEach((v) {
        category.add(HomeCategoryModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }

    if (this.goods != null) {
      data['goods'] = this.goods.map((v) => v.toJson()).toList();
    }

    if (this.category != null) {
      data['category'] = this.category.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class HomeBannerModel {
  String image;

  HomeBannerModel({this.image});

  HomeBannerModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}

class HomeGoodModel {
  //Id
  int id;
  //价格
  int price;
  //折扣价
  int discount_price;
  //名称
  String name;
  //编号
  int good_sn;
  //图片
  String images;

  //构造函数
  HomeGoodModel(
      {this.id,
      this.price,
      this.discount_price,
      this.name,
      this.good_sn,
      this.images});

  //取Json数据
  HomeGoodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    discount_price = json['discount_price'];
    name = json['name'];
    good_sn = json['good_sn'];
    images = json['images'];
  }

  //将数据转成Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['discount_price'] = this.discount_price;
    data['name'] = this.name;
    data['good_sn'] = this.good_sn;
    data['images'] = this.images;
    return data;
  }
}

class HomeCategoryModel {
  //Id
  int id;
  //名称
  String name;
  //父分类Id
  int pid;
  //等级
  String level;
  //图片
  String image;

  //构造函数
  HomeCategoryModel({this.id, this.name, this.pid, this.level, this.image});

  //将数据转成Json
  HomeCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pid = json['pid'];
    level = json['level'];
    image = json['image'];
  }

  //将数据转成Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['pid'] = this.pid;
    data['level'] = this.level;
    data['image'] = this.image;
    return data;
  }
}
