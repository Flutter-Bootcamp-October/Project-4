class User{
  String userid;
  String name;
  String email;
  String password;
  String? phone;
  String? address;
  String? city;
  String? state;
  String? country;
  String ?pincode;
 
  User({
   required this.name,
   required this.email,
   required this.password,
    this.phone,
    this.address,
    this.city,
    this.state,
    this.country,
    this.pincode,
   required this.userid,

  });

  factory User.fromJson(Map json) => User(
    name: json["name"],
    email: json["email"],
    password: json["password"],
    phone: json["phone"],
    address: json["address"],
    city: json["city"],
    state: json["state"],
    country: json["country"],
    pincode: json["pincode"],
    userid: json["userid"],
  
  );


}
