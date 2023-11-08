class drink {
  String? message;
  int? status;
  List<DataRes>? dataRes;

  drink({this.message, this.status, this.dataRes});

  drink.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    if (json['dataRes'] != null) {
      dataRes = <DataRes>[];
      json['dataRes'].forEach((v) {
        dataRes!.add(new DataRes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    if (this.dataRes != null) {
      data['dataRes'] = this.dataRes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataRes {
  int? drinkId;
  String? nameLo;
  String? nameEn;
  String? nameTh;
  int? price;
  String? description;
  String? image;
  String? imageBase64;
  int? resId;
  int? country;
  int? viewCount;
  String? createdDate;
  String? updatedDate;

  DataRes(
      {this.drinkId,
      this.nameLo,
      this.nameEn,
      this.nameTh,
      this.price,
      this.description,
      this.image,
      this.imageBase64,
      this.resId,
      this.country,
      this.viewCount,
      this.createdDate,
      this.updatedDate});

  DataRes.fromJson(Map<String, dynamic> json) {
    drinkId = json['drink_id'];
    nameLo = json['name_lo'];
    nameEn = json['name_en'];
    nameTh = json['name_th'];
    price = json['price'];
    description = json['description'];
    image = json['image'];
    imageBase64 = json['image_base64'];
    resId = json['res_id'];
    country = json['country'];
    viewCount = json['view_count'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drink_id'] = this.drinkId;
    data['name_lo'] = this.nameLo;
    data['name_en'] = this.nameEn;
    data['name_th'] = this.nameTh;
    data['price'] = this.price;
    data['description'] = this.description;
    data['image'] = this.image;
    data['image_base64'] = this.imageBase64;
    data['res_id'] = this.resId;
    data['country'] = this.country;
    data['view_count'] = this.viewCount;
    data['created_date'] = this.createdDate;
    data['updated_date'] = this.updatedDate;
    return data;
  }
}
