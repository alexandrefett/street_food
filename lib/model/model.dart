class Profile {
    String displayName;
    String email;
    String lastSeen;
    String photoURL;
    String uid;

    Profile({this.displayName, this.email, this.lastSeen, this.photoURL, this.uid});

    factory Profile.fromJson(Map<String, dynamic> json) {
        return Profile(
            displayName: json['displayName'],
            email: json['email'],
            lastSeen: json['lastSeen'],
            photoURL: json['photoURL'],
            uid: json['uid'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['displayName'] = this.displayName;
        data['email'] = this.email;
        data['lastSeen'] = this.lastSeen;
        data['photoURL'] = this.photoURL;
        data['uid'] = this.uid;
        return data;
    }
}