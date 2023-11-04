class User {
  String? userid;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? address;
  String? city;
  String? state;

  String? pincode;

  User({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.address,
    this.city,
    this.state,
    this.pincode,
    this.userid,
  });

  factory User.fromJson(Map json) => User(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        pincode: json["pincode"],
        userid: json["userid"],
      );
}
