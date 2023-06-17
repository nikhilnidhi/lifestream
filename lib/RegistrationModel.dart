class Registration {
  String donarname;
  String donarnumber;
  String gmail;
  String key;
  String bloodgroup;
  String location;

  Registration(
      {this.donarname,
      this.donarnumber,
      this.gmail,
      this.key,
      this.bloodgroup,
      this.location});

  Registration.fromJson(Map<String, dynamic> json) {
    donarname = json['donarname'];
    donarnumber = json['donarnumber'];
    gmail = json['gmail'];
    key = json['key'];
    bloodgroup = json['bloodgroup'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['donarname'] = this.donarname;
    data['donarnumber'] = this.donarnumber;
    data['gmail'] = this.gmail;
    data['key'] = this.key;
    data['bloodgroup'] = this.bloodgroup;
    data['location'] = this.location;
    return data;
  }
}
