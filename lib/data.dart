class FlowItem {
  String _circleAvatar;
  String _username;
  String _uploadPhoto;
  String _uploadPhotoDate;

  FlowItem(this._circleAvatar, this._username, this._uploadPhoto,
      this._uploadPhotoDate);

  String get uploadPhotoDate => _uploadPhotoDate;

  set uploadPhotoDate(String value) {
    _uploadPhotoDate = value;
  }

  String get uploadPhoto => _uploadPhoto;

  set uploadPhoto(String value) {
    _uploadPhoto = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get circleAvatar => _circleAvatar;

  set circleAvatar(String value) {
    _circleAvatar = value;
  }
}