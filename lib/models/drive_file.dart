// To parse this JSON data, do
//
//     final driveFile = driveFileFromJson(jsonString);

// ignore_for_file: prefer_null_aware_operators

import 'dart:convert';

DriveFile driveFileFromJson(String str) => DriveFile.fromJson(json.decode(str));

String driveFileToJson(DriveFile data) => json.encode(data.toJson());

class DriveFile {
  DriveFile({
    this.kind,
    this.id,
    this.name,
    this.mimeType,
    this.description,
    this.starred,
    this.trashed,
    this.explicitlyTrashed,
    this.trashingUser,
    this.trashedTime,
    this.parents,
    this.properties,
    this.appProperties,
    this.spaces,
    this.version,
    this.webContentLink,
    this.webViewLink,
    this.iconLink,
    this.hasThumbnail,
    this.thumbnailLink,
    this.thumbnailVersion,
    this.viewedByMe,
    this.viewedByMeTime,
    this.createdTime,
    this.modifiedTime,
    this.modifiedByMeTime,
    this.modifiedByMe,
    this.sharedWithMeTime,
    this.sharingUser,
    this.owners,
    this.teamDriveId,
    this.driveId,
    this.lastModifyingUser,
    this.shared,
    this.ownedByMe,
    this.capabilities,
    this.viewersCanCopyContent,
    this.copyRequiresWriterPermission,
    this.writersCanShare,
    this.permissions,
    this.permissionIds,
    this.hasAugmentedPermissions,
    this.folderColorRgb,
    this.originalFilename,
    this.fullFileExtension,
    this.fileExtension,
    this.md5Checksum,
    this.sha1Checksum,
    this.sha256Checksum,
    this.size,
    this.quotaBytesUsed,
    this.headRevisionId,
    this.contentHints,
    this.imageMediaMetadata,
    this.videoMediaMetadata,
    this.isAppAuthorized,
    this.exportLinks,
    this.shortcutDetails,
    this.contentRestrictions,
    this.labelInfo,
    this.resourceKey,
    this.linkShareMetadata,
  });

  String? kind;
  String? id;
  String? name;
  String? mimeType;
  String? description;
  bool? starred;
  bool? trashed;
  bool? explicitlyTrashed;
  LastModifyingUser? trashingUser;
  DateTime? trashedTime;
  List<String>? parents;
  AppProperties? properties;
  AppProperties? appProperties;
  List<String>? spaces;
  int? version;
  String? webContentLink;
  String? webViewLink;
  String? iconLink;
  bool? hasThumbnail;
  String? thumbnailLink;
  int? thumbnailVersion;
  bool? viewedByMe;
  DateTime? viewedByMeTime;
  DateTime? createdTime;
  DateTime? modifiedTime;
  DateTime? modifiedByMeTime;
  bool? modifiedByMe;
  DateTime? sharedWithMeTime;
  LastModifyingUser? sharingUser;
  List<LastModifyingUser>? owners;
  String? teamDriveId;
  String? driveId;
  LastModifyingUser? lastModifyingUser;
  bool? shared;
  bool? ownedByMe;
  Map<String, bool>? capabilities;
  bool? viewersCanCopyContent;
  bool? copyRequiresWriterPermission;
  bool? writersCanShare;
  List<AppProperties>? permissions;
  List<String>? permissionIds;
  bool? hasAugmentedPermissions;
  String? folderColorRgb;
  String? originalFilename;
  String? fullFileExtension;
  String? fileExtension;
  String? md5Checksum;
  String? sha1Checksum;
  String? sha256Checksum;
  int? size;
  int? quotaBytesUsed;
  String? headRevisionId;
  ContentHints? contentHints;
  ImageMediaMetadata? imageMediaMetadata;
  VideoMediaMetadata? videoMediaMetadata;
  bool? isAppAuthorized;
  AppProperties? exportLinks;
  ShortcutDetails? shortcutDetails;
  List<ContentRestriction>? contentRestrictions;
  LabelInfo? labelInfo;
  String? resourceKey;
  LinkShareMetadata? linkShareMetadata;

  factory DriveFile.fromJson(Map<String, dynamic> json) => DriveFile(
        kind: json["kind"],
        id: json["id"],
        name: json["name"],
        mimeType: json["mimeType"],
        description: json["description"],
        starred: json["starred"],
        trashed: json["trashed"],
        explicitlyTrashed: json["explicitlyTrashed"],
        trashingUser: json["trashingUser"] == null
            ? null
            : LastModifyingUser.fromJson(json["trashingUser"]),
        trashedTime: json["trashedTime"] == null
            ? null
            : DateTime.parse(json["trashedTime"]),
        parents: json["parents"] == null
            ? null
            : List<String>.from(json["parents"].map((x) => x)),
        properties: json["properties"] == null
            ? null
            : AppProperties.fromJson(json["properties"]),
        appProperties: json["appProperties"] == null
            ? null
            : AppProperties.fromJson(json["appProperties"]),
        spaces: json["spaces"] == null
            ? null
            : List<String>.from(json["spaces"].map((x) => x)),
        version: json["version"],
        webContentLink: json["webContentLink"],
        webViewLink: json["webViewLink"],
        iconLink: json["iconLink"],
        hasThumbnail: json["hasThumbnail"],
        thumbnailLink: json["thumbnailLink"],
        thumbnailVersion: json["thumbnailVersion"],
        viewedByMe: json["viewedByMe"],
        viewedByMeTime: json["viewedByMeTime"] == null
            ? null
            : DateTime.parse(json["viewedByMeTime"]),
        createdTime: json["createdTime"] == null
            ? null
            : DateTime.parse(json["createdTime"]),
        modifiedTime: json["modifiedTime"] == null
            ? null
            : DateTime.parse(json["modifiedTime"]),
        modifiedByMeTime: json["modifiedByMeTime"] == null
            ? null
            : DateTime.parse(json["modifiedByMeTime"]),
        modifiedByMe: json["modifiedByMe"],
        sharedWithMeTime: json["sharedWithMeTime"] == null
            ? null
            : DateTime.parse(json["sharedWithMeTime"]),
        sharingUser: json["sharingUser"] == null
            ? null
            : LastModifyingUser.fromJson(json["sharingUser"]),
        owners: json["owners"] == null
            ? null
            : List<LastModifyingUser>.from(
                json["owners"].map((x) => LastModifyingUser.fromJson(x))),
        teamDriveId: json["teamDriveId"],
        driveId: json["driveId"],
        lastModifyingUser: json["lastModifyingUser"] == null
            ? null
            : LastModifyingUser.fromJson(json["lastModifyingUser"]),
        shared: json["shared"],
        ownedByMe: json["ownedByMe"],
        capabilities: json["capabilities"] == null
            ? null
            : Map.from(json["capabilities"])
                .map((k, v) => MapEntry<String, bool>(k, v)),
        viewersCanCopyContent: json["viewersCanCopyContent"],
        copyRequiresWriterPermission: json["copyRequiresWriterPermission"],
        writersCanShare: json["writersCanShare"],
        permissions: json["permissions"] == null
            ? null
            : List<AppProperties>.from(
                json["permissions"].map((x) => AppProperties.fromJson(x))),
        permissionIds: json["permissionIds"] == null
            ? null
            : List<String>.from(json["permissionIds"].map((x) => x)),
        hasAugmentedPermissions: json["hasAugmentedPermissions"],
        folderColorRgb: json["folderColorRgb"],
        originalFilename: json["originalFilename"],
        fullFileExtension: json["fullFileExtension"],
        fileExtension: json["fileExtension"],
        md5Checksum: json["md5Checksum"],
        sha1Checksum: json["sha1Checksum"],
        sha256Checksum: json["sha256Checksum"],
        size: json["size"],
        quotaBytesUsed: json["quotaBytesUsed"],
        headRevisionId: json["headRevisionId"],
        contentHints: json["contentHints"] == null
            ? null
            : ContentHints.fromJson(json["contentHints"]),
        imageMediaMetadata: json["imageMediaMetadata"] == null
            ? null
            : ImageMediaMetadata.fromJson(json["imageMediaMetadata"]),
        videoMediaMetadata: json["videoMediaMetadata"] == null
            ? null
            : VideoMediaMetadata.fromJson(json["videoMediaMetadata"]),
        isAppAuthorized: json["isAppAuthorized"],
        exportLinks: json["exportLinks"] == null
            ? null
            : AppProperties.fromJson(json["exportLinks"]),
        shortcutDetails: json["shortcutDetails"] == null
            ? null
            : ShortcutDetails.fromJson(json["shortcutDetails"]),
        contentRestrictions: json["contentRestrictions"] == null
            ? null
            : List<ContentRestriction>.from(json["contentRestrictions"]
                .map((x) => ContentRestriction.fromJson(x))),
        labelInfo: json["labelInfo"] == null
            ? null
            : LabelInfo.fromJson(json["labelInfo"]),
        resourceKey: json["resourceKey"],
        linkShareMetadata: json["linkShareMetadata"] == null
            ? null
            : LinkShareMetadata.fromJson(json["linkShareMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "name": name,
        "mimeType": mimeType,
        "description": description,
        "starred": starred,
        "trashed": trashed,
        "explicitlyTrashed": explicitlyTrashed,
        "trashingUser": trashingUser == null ? null : trashingUser!.toJson(),
        "trashedTime":
            trashedTime == null ? null : trashedTime!.toIso8601String(),
        "parents":
            parents == null ? null : List<dynamic>.from(parents!.map((x) => x)),
        "properties": properties == null ? null : properties!.toJson(),
        "appProperties": appProperties == null ? null : appProperties!.toJson(),
        "spaces":
            spaces == null ? null : List<dynamic>.from(spaces!.map((x) => x)),
        "version": version,
        "webContentLink": webContentLink,
        "webViewLink": webViewLink,
        "iconLink": iconLink,
        "hasThumbnail": hasThumbnail,
        "thumbnailLink": thumbnailLink,
        "thumbnailVersion": thumbnailVersion,
        "viewedByMe": viewedByMe,
        "viewedByMeTime":
            viewedByMeTime == null ? null : viewedByMeTime!.toIso8601String(),
        "createdTime":
            createdTime == null ? null : createdTime!.toIso8601String(),
        "modifiedTime":
            modifiedTime == null ? null : modifiedTime!.toIso8601String(),
        "modifiedByMeTime": modifiedByMeTime == null
            ? null
            : modifiedByMeTime!.toIso8601String(),
        "modifiedByMe": modifiedByMe,
        "sharedWithMeTime": sharedWithMeTime == null
            ? null
            : sharedWithMeTime!.toIso8601String(),
        "sharingUser": sharingUser == null ? null : sharingUser!.toJson(),
        "owners": owners == null
            ? null
            : List<dynamic>.from(owners!.map((x) => x.toJson())),
        "teamDriveId": teamDriveId,
        "driveId": driveId,
        "lastModifyingUser":
            lastModifyingUser == null ? null : lastModifyingUser!.toJson(),
        "shared": shared,
        "ownedByMe": ownedByMe,
        "capabilities": capabilities == null
            ? null
            : Map.from(capabilities!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "viewersCanCopyContent": viewersCanCopyContent,
        "copyRequiresWriterPermission": copyRequiresWriterPermission,
        "writersCanShare": writersCanShare,
        "permissions": permissions == null
            ? null
            : List<dynamic>.from(permissions!.map((x) => x.toJson())),
        "permissionIds": permissionIds == null
            ? null
            : List<dynamic>.from(permissionIds!.map((x) => x)),
        "hasAugmentedPermissions": hasAugmentedPermissions,
        "folderColorRgb": folderColorRgb,
        "originalFilename": originalFilename,
        "fullFileExtension": fullFileExtension,
        "fileExtension": fileExtension,
        "md5Checksum": md5Checksum,
        "sha1Checksum": sha1Checksum,
        "sha256Checksum": sha256Checksum,
        "size": size,
        "quotaBytesUsed": quotaBytesUsed,
        "headRevisionId": headRevisionId,
        "contentHints": contentHints == null ? null : contentHints!.toJson(),
        "imageMediaMetadata":
            imageMediaMetadata == null ? null : imageMediaMetadata!.toJson(),
        "videoMediaMetadata":
            videoMediaMetadata == null ? null : videoMediaMetadata!.toJson(),
        "isAppAuthorized": isAppAuthorized,
        "exportLinks": exportLinks == null ? null : exportLinks!.toJson(),
        "shortcutDetails":
            shortcutDetails == null ? null : shortcutDetails!.toJson(),
        "contentRestrictions": contentRestrictions == null
            ? null
            : List<dynamic>.from(contentRestrictions!.map((x) => x.toJson())),
        "labelInfo": labelInfo == null ? null : labelInfo!.toJson(),
        "resourceKey": resourceKey,
        "linkShareMetadata":
            linkShareMetadata == null ? null : linkShareMetadata!.toJson(),
      };
}

class AppProperties {
  AppProperties({
    this.key,
  });

  String? key;

  factory AppProperties.fromJson(Map<String, dynamic> json) => AppProperties(
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
      };
}

class ContentHints {
  ContentHints({
    this.thumbnail,
    this.indexableText,
  });

  Thumbnail? thumbnail;
  String? indexableText;

  factory ContentHints.fromJson(Map<String, dynamic> json) => ContentHints(
        thumbnail: json["thumbnail"] == null
            ? null
            : Thumbnail.fromJson(json["thumbnail"]),
        indexableText: json["indexableText"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail!.toJson(),
        "indexableText": indexableText,
      };
}

class Thumbnail {
  Thumbnail({
    this.image,
    this.mimeType,
  });

  String? image;
  String? mimeType;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        image: json["image"],
        mimeType: json["mimeType"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "mimeType": mimeType,
      };
}

class ContentRestriction {
  ContentRestriction({
    this.readOnly,
    this.reason,
    this.restrictingUser,
    this.restrictionTime,
    this.type,
  });

  bool? readOnly;
  String? reason;
  LastModifyingUser? restrictingUser;
  DateTime? restrictionTime;
  String? type;

  factory ContentRestriction.fromJson(Map<String, dynamic> json) =>
      ContentRestriction(
        readOnly: json["readOnly"],
        reason: json["reason"],
        restrictingUser: json["restrictingUser"] == null
            ? null
            : LastModifyingUser.fromJson(json["restrictingUser"]),
        restrictionTime: json["restrictionTime"] == null
            ? null
            : DateTime.parse(json["restrictionTime"]),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "readOnly": readOnly,
        "reason": reason,
        "restrictingUser":
            restrictingUser == null ? null : restrictingUser!.toJson(),
        "restrictionTime":
            restrictionTime == null ? null : restrictionTime!.toIso8601String(),
        "type": type,
      };
}

class LastModifyingUser {
  LastModifyingUser({
    this.kind,
    this.displayName,
    this.photoLink,
    this.me,
    this.permissionId,
    this.emailAddress,
  });

  String? kind;
  String? displayName;
  String? photoLink;
  bool? me;
  String? permissionId;
  String? emailAddress;

  factory LastModifyingUser.fromJson(Map<String, dynamic> json) =>
      LastModifyingUser(
        kind: json["kind"],
        displayName: json["displayName"],
        photoLink: json["photoLink"],
        me: json["me"],
        permissionId: json["permissionId"],
        emailAddress: json["emailAddress"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "displayName": displayName,
        "photoLink": photoLink,
        "me": me,
        "permissionId": permissionId,
        "emailAddress": emailAddress,
      };
}

class ImageMediaMetadata {
  ImageMediaMetadata({
    this.width,
    this.height,
    this.rotation,
    this.location,
    this.time,
    this.cameraMake,
    this.cameraModel,
    this.exposureTime,
    this.aperture,
    this.flashUsed,
    this.focalLength,
    this.isoSpeed,
    this.meteringMode,
    this.sensor,
    this.exposureMode,
    this.colorSpace,
    this.whiteBalance,
    this.exposureBias,
    this.maxApertureValue,
    this.subjectDistance,
    this.lens,
  });

  int? width;
  int? height;
  int? rotation;
  Location? location;
  String? time;
  String? cameraMake;
  String? cameraModel;
  double? exposureTime;
  double? aperture;
  bool? flashUsed;
  double? focalLength;
  int? isoSpeed;
  String? meteringMode;
  String? sensor;
  String? exposureMode;
  String? colorSpace;
  String? whiteBalance;
  double? exposureBias;
  double? maxApertureValue;
  int? subjectDistance;
  String? lens;

  factory ImageMediaMetadata.fromJson(Map<String, dynamic> json) =>
      ImageMediaMetadata(
        width: json["width"],
        height: json["height"],
        rotation: json["rotation"],
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        time: json["time"],
        cameraMake: json["cameraMake"],
        cameraModel: json["cameraModel"],
        exposureTime: json["exposureTime"] == null
            ? null
            : json["exposureTime"].toDouble(),
        aperture: json["aperture"] == null ? null : json["aperture"].toDouble(),
        flashUsed: json["flashUsed"],
        focalLength:
            json["focalLength"] == null ? null : json["focalLength"].toDouble(),
        isoSpeed: json["isoSpeed"],
        meteringMode: json["meteringMode"],
        sensor: json["sensor"],
        exposureMode: json["exposureMode"],
        colorSpace: json["colorSpace"],
        whiteBalance: json["whiteBalance"],
        exposureBias: json["exposureBias"] == null
            ? null
            : json["exposureBias"].toDouble(),
        maxApertureValue: json["maxApertureValue"] == null
            ? null
            : json["maxApertureValue"].toDouble(),
        subjectDistance: json["subjectDistance"],
        lens: json["lens"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "rotation": rotation,
        "location": location == null ? null : location!.toJson(),
        "time": time,
        "cameraMake": cameraMake,
        "cameraModel": cameraModel,
        "exposureTime": exposureTime,
        "aperture": aperture,
        "flashUsed": flashUsed,
        "focalLength": focalLength,
        "isoSpeed": isoSpeed,
        "meteringMode": meteringMode,
        "sensor": sensor,
        "exposureMode": exposureMode,
        "colorSpace": colorSpace,
        "whiteBalance": whiteBalance,
        "exposureBias": exposureBias,
        "maxApertureValue": maxApertureValue,
        "subjectDistance": subjectDistance,
        "lens": lens,
      };
}

class Location {
  Location({
    this.latitude,
    this.longitude,
    this.altitude,
  });

  String? latitude;
  String? longitude;
  String? altitude;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"],
        longitude: json["longitude"],
        altitude: json["altitude"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "altitude": altitude,
      };
}

class LabelInfo {
  LabelInfo({
    this.labels,
  });

  List<Label>? labels;

  factory LabelInfo.fromJson(Map<String, dynamic> json) => LabelInfo(
        labels: json["labels"] == null
            ? null
            : List<Label>.from(json["labels"].map((x) => Label.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "labels": labels == null
            ? null
            : List<dynamic>.from(labels!.map((x) => x.toJson())),
      };
}

class Label {
  Label({
    this.kind,
    this.id,
    this.revisionId,
    this.fields,
  });

  String? kind;
  String? id;
  String? revisionId;
  Fields? fields;

  factory Label.fromJson(Map<String, dynamic> json) => Label(
        kind: json["kind"],
        id: json["id"],
        revisionId: json["revisionId"],
        fields: json["fields"] == null ? null : Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "revisionId": revisionId,
        "fields": fields == null ? null : fields!.toJson(),
      };
}

class Fields {
  Fields({
    this.key,
  });

  Key? key;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        key: json["key"] == null ? null : Key.fromJson(json["key"]),
      );

  Map<String, dynamic> toJson() => {
        "key": key == null ? null : key!.toJson(),
      };
}

class Key {
  Key({
    this.kind,
    this.id,
    this.valueType,
    this.dateString,
    this.integer,
    this.selection,
    this.text,
    this.user,
  });

  String? kind;
  String? id;
  String? valueType;
  List<String>? dateString;
  List<int>? integer;
  List<String>? selection;
  List<String>? text;
  List<LastModifyingUser>? user;

  factory Key.fromJson(Map<String, dynamic> json) => Key(
        kind: json["kind"],
        id: json["id"],
        valueType: json["valueType"],
        dateString: json["dateString"] == null
            ? null
            : List<String>.from(json["dateString"].map((x) => x)),
        integer: json["integer"] == null
            ? null
            : List<int>.from(json["integer"].map((x) => x)),
        selection: json["selection"] == null
            ? null
            : List<String>.from(json["selection"].map((x) => x)),
        text: json["text"] == null
            ? null
            : List<String>.from(json["text"].map((x) => x)),
        user: json["user"] == null
            ? null
            : List<LastModifyingUser>.from(
                json["user"].map((x) => LastModifyingUser.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "valueType": valueType,
        "dateString": dateString == null
            ? null
            : List<dynamic>.from(dateString!.map((x) => x)),
        "integer":
            integer == null ? null : List<dynamic>.from(integer!.map((x) => x)),
        "selection": selection == null
            ? null
            : List<dynamic>.from(selection!.map((x) => x)),
        "text": text == null ? null : List<dynamic>.from(text!.map((x) => x)),
        "user": user == null
            ? null
            : List<dynamic>.from(user!.map((x) => x.toJson())),
      };
}

class LinkShareMetadata {
  LinkShareMetadata({
    this.securityUpdateEligible,
    this.securityUpdateEnabled,
  });

  bool? securityUpdateEligible;
  bool? securityUpdateEnabled;

  factory LinkShareMetadata.fromJson(Map<String, dynamic> json) =>
      LinkShareMetadata(
        securityUpdateEligible: json["securityUpdateEligible"],
        securityUpdateEnabled: json["securityUpdateEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "securityUpdateEligible": securityUpdateEligible,
        "securityUpdateEnabled": securityUpdateEnabled,
      };
}

class ShortcutDetails {
  ShortcutDetails({
    this.targetId,
    this.targetMimeType,
    this.targetResourceKey,
  });

  String? targetId;
  String? targetMimeType;
  String? targetResourceKey;

  factory ShortcutDetails.fromJson(Map<String, dynamic> json) =>
      ShortcutDetails(
        targetId: json["targetId"],
        targetMimeType: json["targetMimeType"],
        targetResourceKey: json["targetResourceKey"],
      );

  Map<String, dynamic> toJson() => {
        "targetId": targetId,
        "targetMimeType": targetMimeType,
        "targetResourceKey": targetResourceKey,
      };
}

class VideoMediaMetadata {
  VideoMediaMetadata({
    this.width,
    this.height,
    this.durationMillis,
  });

  int? width;
  int? height;
  int? durationMillis;

  factory VideoMediaMetadata.fromJson(Map<String, dynamic> json) =>
      VideoMediaMetadata(
        width: json["width"],
        height: json["height"],
        durationMillis: json["durationMillis"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "durationMillis": durationMillis,
      };
}



/* // To parse this JSON data, do */
/* // */
/* //     final driveFile = driveFileFromJson(jsonString); */

/* import 'dart:convert'; */

/* DriveFile driveFileFromJson(String str) => DriveFile.fromJson(json.decode(str)); */

/* String driveFileToJson(DriveFile data) => json.encode(data.toJson()); */

/* class DriveFile { */
/*   DriveFile({ */
/*     required this.kind, */
/*     required this.id, */
/*     required this.name, */
/*     required this.mimeType, */
/*     required this.description, */
/*     required this.starred, */
/*     required this.trashed, */
/*     required this.explicitlyTrashed, */
/*     required this.trashingUser, */
/*     required this.trashedTime, */
/*     required this.parents, */
/*     required this.properties, */
/*     required this.appProperties, */
/*     required this.spaces, */
/*     required this.version, */
/*     required this.webContentLink, */
/*     required this.webViewLink, */
/*     required this.iconLink, */
/*     required this.hasThumbnail, */
/*     required this.thumbnailLink, */
/*     required this.thumbnailVersion, */
/*     required this.viewedByMe, */
/*     required this.viewedByMeTime, */
/*     required this.createdTime, */
/*     required this.modifiedTime, */
/*     required this.modifiedByMeTime, */
/*     required this.modifiedByMe, */
/*     required this.sharedWithMeTime, */
/*     required this.sharingUser, */
/*     required this.owners, */
/*     required this.teamDriveId, */
/*     required this.driveId, */
/*     required this.lastModifyingUser, */
/*     required this.shared, */
/*     required this.ownedByMe, */
/*     required this.capabilities, */
/*     required this.viewersCanCopyContent, */
/*     required this.copyRequiresWriterPermission, */
/*     required this.writersCanShare, */
/*     required this.permissions, */
/*     required this.permissionIds, */
/*     required this.hasAugmentedPermissions, */
/*     required this.folderColorRgb, */
/*     required this.originalFilename, */
/*     required this.fullFileExtension, */
/*     required this.fileExtension, */
/*     required this.md5Checksum, */
/*     required this.sha1Checksum, */
/*     required this.sha256Checksum, */
/*     required this.size, */
/*     required this.quotaBytesUsed, */
/*     required this.headRevisionId, */
/*     required this.contentHints, */
/*     required this.imageMediaMetadata, */
/*     required this.videoMediaMetadata, */
/*     required this.isAppAuthorized, */
/*     required this.exportLinks, */
/*     required this.shortcutDetails, */
/*     required this.contentRestrictions, */
/*     required this.labelInfo, */
/*     required this.resourceKey, */
/*     required this.linkShareMetadata, */
/*   }); */

/*   String kind; */
/*   String id; */
/*   String name; */
/*   String mimeType; */
/*   String description; */
/*   bool starred; */
/*   bool trashed; */
/*   bool explicitlyTrashed; */
/*   LastModifyingUser trashingUser; */
/*   DateTime trashedTime; */
/*   List<String> parents; */
/*   AppProperties properties; */
/*   AppProperties appProperties; */
/*   List<String> spaces; */
/*   int version; */
/*   String webContentLink; */
/*   String webViewLink; */
/*   String iconLink; */
/*   bool hasThumbnail; */
/*   String thumbnailLink; */
/*   int thumbnailVersion; */
/*   bool viewedByMe; */
/*   DateTime viewedByMeTime; */
/*   DateTime createdTime; */
/*   DateTime modifiedTime; */
/*   DateTime modifiedByMeTime; */
/*   bool modifiedByMe; */
/*   DateTime sharedWithMeTime; */
/*   LastModifyingUser sharingUser; */
/*   List<LastModifyingUser> owners; */
/*   String teamDriveId; */
/*   String driveId; */
/*   LastModifyingUser lastModifyingUser; */
/*   bool shared; */
/*   bool ownedByMe; */
/*   Map<String, bool> capabilities; */
/*   bool viewersCanCopyContent; */
/*   bool copyRequiresWriterPermission; */
/*   bool writersCanShare; */
/*   List<AppProperties> permissions; */
/*   List<String> permissionIds; */
/*   bool hasAugmentedPermissions; */
/*   String folderColorRgb; */
/*   String originalFilename; */
/*   String fullFileExtension; */
/*   String fileExtension; */
/*   String md5Checksum; */
/*   String sha1Checksum; */
/*   String sha256Checksum; */
/*   int size; */
/*   int quotaBytesUsed; */
/*   String headRevisionId; */
/*   ContentHints contentHints; */
/*   ImageMediaMetadata imageMediaMetadata; */
/*   VideoMediaMetadata videoMediaMetadata; */
/*   bool isAppAuthorized; */
/*   AppProperties exportLinks; */
/*   ShortcutDetails shortcutDetails; */
/*   List<ContentRestriction> contentRestrictions; */
/*   LabelInfo labelInfo; */
/*   String resourceKey; */
/*   LinkShareMetadata linkShareMetadata; */

/*   factory DriveFile.fromJson(Map<String, dynamic> json) => DriveFile( */
/*         kind: json["kind"], */
/*         id: json["id"], */
/*         name: json["name"], */
/*         mimeType: json["mimeType"], */
/*         description: json["description"], */
/*         starred: json["starred"], */
/*         trashed: json["trashed"], */
/*         explicitlyTrashed: json["explicitlyTrashed"], */
/*         trashingUser: LastModifyingUser.fromJson(json["trashingUser"]), */
/*         trashedTime: DateTime.parse(json["trashedTime"]), */
/*         parents: List<String>.from(json["parents"].map((x) => x)), */
/*         properties: AppProperties.fromJson(json["properties"]), */
/*         appProperties: AppProperties.fromJson(json["appProperties"]), */
/*         spaces: List<String>.from(json["spaces"].map((x) => x)), */
/*         version: json["version"], */
/*         webContentLink: json["webContentLink"], */
/*         webViewLink: json["webViewLink"], */
/*         iconLink: json["iconLink"], */
/*         hasThumbnail: json["hasThumbnail"], */
/*         thumbnailLink: json["thumbnailLink"], */
/*         thumbnailVersion: json["thumbnailVersion"], */
/*         viewedByMe: json["viewedByMe"], */
/*         viewedByMeTime: DateTime.parse(json["viewedByMeTime"]), */
/*         createdTime: DateTime.parse(json["createdTime"]), */
/*         modifiedTime: DateTime.parse(json["modifiedTime"]), */
/*         modifiedByMeTime: DateTime.parse(json["modifiedByMeTime"]), */
/*         modifiedByMe: json["modifiedByMe"], */
/*         sharedWithMeTime: DateTime.parse(json["sharedWithMeTime"]), */
/*         sharingUser: LastModifyingUser.fromJson(json["sharingUser"]), */
/*         owners: List<LastModifyingUser>.from( */
/*             json["owners"].map((x) => LastModifyingUser.fromJson(x))), */
/*         teamDriveId: json["teamDriveId"], */
/*         driveId: json["driveId"], */
/*         lastModifyingUser: */
/*             LastModifyingUser.fromJson(json["lastModifyingUser"]), */
/*         shared: json["shared"], */
/*         ownedByMe: json["ownedByMe"], */
/*         capabilities: Map.from(json["capabilities"]) */
/*             .map((k, v) => MapEntry<String, bool>(k, v)), */
/*         viewersCanCopyContent: json["viewersCanCopyContent"], */
/*         copyRequiresWriterPermission: json["copyRequiresWriterPermission"], */
/*         writersCanShare: json["writersCanShare"], */
/*         permissions: List<AppProperties>.from( */
/*             json["permissions"].map((x) => AppProperties.fromJson(x))), */
/*         permissionIds: List<String>.from(json["permissionIds"].map((x) => x)), */
/*         hasAugmentedPermissions: json["hasAugmentedPermissions"], */
/*         folderColorRgb: json["folderColorRgb"], */
/*         originalFilename: json["originalFilename"], */
/*         fullFileExtension: json["fullFileExtension"], */
/*         fileExtension: json["fileExtension"], */
/*         md5Checksum: json["md5Checksum"], */
/*         sha1Checksum: json["sha1Checksum"], */
/*         sha256Checksum: json["sha256Checksum"], */
/*         size: json["size"], */
/*         quotaBytesUsed: json["quotaBytesUsed"], */
/*         headRevisionId: json["headRevisionId"], */
/*         contentHints: ContentHints.fromJson(json["contentHints"]), */
/*         imageMediaMetadata: */
/*             ImageMediaMetadata.fromJson(json["imageMediaMetadata"]), */
/*         videoMediaMetadata: */
/*             VideoMediaMetadata.fromJson(json["videoMediaMetadata"]), */
/*         isAppAuthorized: json["isAppAuthorized"], */
/*         exportLinks: AppProperties.fromJson(json["exportLinks"]), */
/*         shortcutDetails: ShortcutDetails.fromJson(json["shortcutDetails"]), */
/*         contentRestrictions: List<ContentRestriction>.from( */
/*             json["contentRestrictions"] */
/*                 .map((x) => ContentRestriction.fromJson(x))), */
/*         labelInfo: LabelInfo.fromJson(json["labelInfo"]), */
/*         resourceKey: json["resourceKey"], */
/*         linkShareMetadata: */
/*             LinkShareMetadata.fromJson(json["linkShareMetadata"]), */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "kind": kind, */
/*         "id": id, */
/*         "name": name, */
/*         "mimeType": mimeType, */
/*         "description": description, */
/*         "starred": starred, */
/*         "trashed": trashed, */
/*         "explicitlyTrashed": explicitlyTrashed, */
/*         "trashingUser": trashingUser.toJson(), */
/*         "trashedTime": trashedTime.toIso8601String(), */
/*         "parents": List<dynamic>.from(parents.map((x) => x)), */
/*         "properties": properties.toJson(), */
/*         "appProperties": appProperties.toJson(), */
/*         "spaces": List<dynamic>.from(spaces.map((x) => x)), */
/*         "version": version, */
/*         "webContentLink": webContentLink, */
/*         "webViewLink": webViewLink, */
/*         "iconLink": iconLink, */
/*         "hasThumbnail": hasThumbnail, */
/*         "thumbnailLink": thumbnailLink, */
/*         "thumbnailVersion": thumbnailVersion, */
/*         "viewedByMe": viewedByMe, */
/*         "viewedByMeTime": viewedByMeTime.toIso8601String(), */
/*         "createdTime": createdTime.toIso8601String(), */
/*         "modifiedTime": modifiedTime.toIso8601String(), */
/*         "modifiedByMeTime": modifiedByMeTime.toIso8601String(), */
/*         "modifiedByMe": modifiedByMe, */
/*         "sharedWithMeTime": sharedWithMeTime.toIso8601String(), */
/*         "sharingUser": sharingUser.toJson(), */
/*         "owners": List<dynamic>.from(owners.map((x) => x.toJson())), */
/*         "teamDriveId": teamDriveId, */
/*         "driveId": driveId, */
/*         "lastModifyingUser": lastModifyingUser.toJson(), */
/*         "shared": shared, */
/*         "ownedByMe": ownedByMe, */
/*         "capabilities": Map.from(capabilities) */
/*             .map((k, v) => MapEntry<String, dynamic>(k, v)), */
/*         "viewersCanCopyContent": viewersCanCopyContent, */
/*         "copyRequiresWriterPermission": copyRequiresWriterPermission, */
/*         "writersCanShare": writersCanShare, */
/*         "permissions": List<dynamic>.from(permissions.map((x) => x.toJson())), */
/*         "permissionIds": List<dynamic>.from(permissionIds.map((x) => x)), */
/*         "hasAugmentedPermissions": hasAugmentedPermissions, */
/*         "folderColorRgb": folderColorRgb, */
/*         "originalFilename": originalFilename, */
/*         "fullFileExtension": fullFileExtension, */
/*         "fileExtension": fileExtension, */
/*         "md5Checksum": md5Checksum, */
/*         "sha1Checksum": sha1Checksum, */
/*         "sha256Checksum": sha256Checksum, */
/*         "size": size, */
/*         "quotaBytesUsed": quotaBytesUsed, */
/*         "headRevisionId": headRevisionId, */
/*         "contentHints": contentHints.toJson(), */
/*         "imageMediaMetadata": imageMediaMetadata.toJson(), */
/*         "videoMediaMetadata": videoMediaMetadata.toJson(), */
/*         "isAppAuthorized": isAppAuthorized, */
/*         "exportLinks": exportLinks.toJson(), */
/*         "shortcutDetails": shortcutDetails.toJson(), */
/*         "contentRestrictions": */
/*             List<dynamic>.from(contentRestrictions.map((x) => x.toJson())), */
/*         "labelInfo": labelInfo.toJson(), */
/*         "resourceKey": resourceKey, */
/*         "linkShareMetadata": linkShareMetadata.toJson(), */
/*       }; */
/* } */

/* class AppProperties { */
/*   AppProperties({ */
/*     required this.key, */
/*   }); */

/*   String key; */

/*   factory AppProperties.fromJson(Map<String, dynamic> json) => AppProperties( */
/*         key: json["key"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "key": key, */
/*       }; */
/* } */

/* class ContentHints { */
/*   ContentHints({ */
/*     required this.thumbnail, */
/*     required this.indexableText, */
/*   }); */

/*   Thumbnail thumbnail; */
/*   String indexableText; */

/*   factory ContentHints.fromJson(Map<String, dynamic> json) => ContentHints( */
/*         thumbnail: Thumbnail.fromJson(json["thumbnail"]), */
/*         indexableText: json["indexableText"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "thumbnail": thumbnail.toJson(), */
/*         "indexableText": indexableText, */
/*       }; */
/* } */

/* class Thumbnail { */
/*   Thumbnail({ */
/*     required this.image, */
/*     required this.mimeType, */
/*   }); */

/*   String image; */
/*   String mimeType; */

/*   factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail( */
/*         image: json["image"], */
/*         mimeType: json["mimeType"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "image": image, */
/*         "mimeType": mimeType, */
/*       }; */
/* } */

/* class ContentRestriction { */
/*   ContentRestriction({ */
/*     required this.readOnly, */
/*     required this.reason, */
/*     required this.restrictingUser, */
/*     required this.restrictionTime, */
/*     required this.type, */
/*   }); */

/*   bool readOnly; */
/*   String reason; */
/*   LastModifyingUser restrictingUser; */
/*   DateTime restrictionTime; */
/*   String type; */

/*   factory ContentRestriction.fromJson(Map<String, dynamic> json) => */
/*       ContentRestriction( */
/*         readOnly: json["readOnly"], */
/*         reason: json["reason"], */
/*         restrictingUser: LastModifyingUser.fromJson(json["restrictingUser"]), */
/*         restrictionTime: DateTime.parse(json["restrictionTime"]), */
/*         type: json["type"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "readOnly": readOnly, */
/*         "reason": reason, */
/*         "restrictingUser": restrictingUser.toJson(), */
/*         "restrictionTime": restrictionTime.toIso8601String(), */
/*         "type": type, */
/*       }; */
/* } */

/* class LastModifyingUser { */
/*   LastModifyingUser({ */
/*     required this.kind, */
/*     required this.displayName, */
/*     required this.photoLink, */
/*     required this.me, */
/*     required this.permissionId, */
/*     required this.emailAddress, */
/*   }); */

/*   String kind; */
/*   String displayName; */
/*   String photoLink; */
/*   bool me; */
/*   String permissionId; */
/*   String emailAddress; */

/*   factory LastModifyingUser.fromJson(Map<String, dynamic> json) => */
/*       LastModifyingUser( */
/*         kind: json["kind"], */
/*         displayName: json["displayName"], */
/*         photoLink: json["photoLink"], */
/*         me: json["me"], */
/*         permissionId: json["permissionId"], */
/*         emailAddress: json["emailAddress"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "kind": kind, */
/*         "displayName": displayName, */
/*         "photoLink": photoLink, */
/*         "me": me, */
/*         "permissionId": permissionId, */
/*         "emailAddress": emailAddress, */
/*       }; */
/* } */

/* class ImageMediaMetadata { */
/*   ImageMediaMetadata({ */
/*     required this.width, */
/*     required this.height, */
/*     required this.rotation, */
/*     required this.location, */
/*     required this.time, */
/*     required this.cameraMake, */
/*     required this.cameraModel, */
/*     required this.exposureTime, */
/*     required this.aperture, */
/*     required this.flashUsed, */
/*     required this.focalLength, */
/*     required this.isoSpeed, */
/*     required this.meteringMode, */
/*     required this.sensor, */
/*     required this.exposureMode, */
/*     required this.colorSpace, */
/*     required this.whiteBalance, */
/*     required this.exposureBias, */
/*     required this.maxApertureValue, */
/*     required this.subjectDistance, */
/*     required this.lens, */
/*   }); */

/*   int width; */
/*   int height; */
/*   int rotation; */
/*   Location location; */
/*   String time; */
/*   String cameraMake; */
/*   String cameraModel; */
/*   double exposureTime; */
/*   double aperture; */
/*   bool flashUsed; */
/*   double focalLength; */
/*   int isoSpeed; */
/*   String meteringMode; */
/*   String sensor; */
/*   String exposureMode; */
/*   String colorSpace; */
/*   String whiteBalance; */
/*   double exposureBias; */
/*   double maxApertureValue; */
/*   int subjectDistance; */
/*   String lens; */

/*   factory ImageMediaMetadata.fromJson(Map<String, dynamic> json) => */
/*       ImageMediaMetadata( */
/*         width: json["width"], */
/*         height: json["height"], */
/*         rotation: json["rotation"], */
/*         location: Location.fromJson(json["location"]), */
/*         time: json["time"], */
/*         cameraMake: json["cameraMake"], */
/*         cameraModel: json["cameraModel"], */
/*         exposureTime: json["exposureTime"].toDouble(), */
/*         aperture: json["aperture"].toDouble(), */
/*         flashUsed: json["flashUsed"], */
/*         focalLength: json["focalLength"].toDouble(), */
/*         isoSpeed: json["isoSpeed"], */
/*         meteringMode: json["meteringMode"], */
/*         sensor: json["sensor"], */
/*         exposureMode: json["exposureMode"], */
/*         colorSpace: json["colorSpace"], */
/*         whiteBalance: json["whiteBalance"], */
/*         exposureBias: json["exposureBias"].toDouble(), */
/*         maxApertureValue: json["maxApertureValue"].toDouble(), */
/*         subjectDistance: json["subjectDistance"], */
/*         lens: json["lens"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "width": width, */
/*         "height": height, */
/*         "rotation": rotation, */
/*         "location": location.toJson(), */
/*         "time": time, */
/*         "cameraMake": cameraMake, */
/*         "cameraModel": cameraModel, */
/*         "exposureTime": exposureTime, */
/*         "aperture": aperture, */
/*         "flashUsed": flashUsed, */
/*         "focalLength": focalLength, */
/*         "isoSpeed": isoSpeed, */
/*         "meteringMode": meteringMode, */
/*         "sensor": sensor, */
/*         "exposureMode": exposureMode, */
/*         "colorSpace": colorSpace, */
/*         "whiteBalance": whiteBalance, */
/*         "exposureBias": exposureBias, */
/*         "maxApertureValue": maxApertureValue, */
/*         "subjectDistance": subjectDistance, */
/*         "lens": lens, */
/*       }; */
/* } */

/* class Location { */
/*   Location({ */
/*     required this.latitude, */
/*     required this.longitude, */
/*     required this.altitude, */
/*   }); */

/*   String latitude; */
/*   String longitude; */
/*   String altitude; */

/*   factory Location.fromJson(Map<String, dynamic> json) => Location( */
/*         latitude: json["latitude"], */
/*         longitude: json["longitude"], */
/*         altitude: json["altitude"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "latitude": latitude, */
/*         "longitude": longitude, */
/*         "altitude": altitude, */
/*       }; */
/* } */

/* class LabelInfo { */
/*   LabelInfo({ */
/*     required this.labels, */
/*   }); */

/*   List<Label> labels; */

/*   factory LabelInfo.fromJson(Map<String, dynamic> json) => LabelInfo( */
/*         labels: List<Label>.from(json["labels"].map((x) => Label.fromJson(x))), */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "labels": List<dynamic>.from(labels.map((x) => x.toJson())), */
/*       }; */
/* } */

/* class Label { */
/*   Label({ */
/*     required this.kind, */
/*     required this.id, */
/*     required this.revisionId, */
/*     required this.fields, */
/*   }); */

/*   String kind; */
/*   String id; */
/*   String revisionId; */
/*   Fields fields; */

/*   factory Label.fromJson(Map<String, dynamic> json) => Label( */
/*         kind: json["kind"], */
/*         id: json["id"], */
/*         revisionId: json["revisionId"], */
/*         fields: Fields.fromJson(json["fields"]), */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "kind": kind, */
/*         "id": id, */
/*         "revisionId": revisionId, */
/*         "fields": fields.toJson(), */
/*       }; */
/* } */

/* class Fields { */
/*   Fields({ */
/*     required this.key, */
/*   }); */

/*   Key key; */

/*   factory Fields.fromJson(Map<String, dynamic> json) => Fields( */
/*         key: Key.fromJson(json["key"]), */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "key": key.toJson(), */
/*       }; */
/* } */

/* class Key { */
/*   Key({ */
/*     required this.kind, */
/*     required this.id, */
/*     required this.valueType, */
/*     required this.dateString, */
/*     required this.integer, */
/*     required this.selection, */
/*     required this.text, */
/*     required this.user, */
/*   }); */

/*   String kind; */
/*   String id; */
/*   String valueType; */
/*   List<String> dateString; */
/*   List<int> integer; */
/*   List<String> selection; */
/*   List<String> text; */
/*   List<LastModifyingUser> user; */

/*   factory Key.fromJson(Map<String, dynamic> json) => Key( */
/*         kind: json["kind"], */
/*         id: json["id"], */
/*         valueType: json["valueType"], */
/*         dateString: List<String>.from(json["dateString"].map((x) => x)), */
/*         integer: List<int>.from(json["integer"].map((x) => x)), */
/*         selection: List<String>.from(json["selection"].map((x) => x)), */
/*         text: List<String>.from(json["text"].map((x) => x)), */
/*         user: List<LastModifyingUser>.from( */
/*             json["user"].map((x) => LastModifyingUser.fromJson(x))), */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "kind": kind, */
/*         "id": id, */
/*         "valueType": valueType, */
/*         "dateString": List<dynamic>.from(dateString.map((x) => x)), */
/*         "integer": List<dynamic>.from(integer.map((x) => x)), */
/*         "selection": List<dynamic>.from(selection.map((x) => x)), */
/*         "text": List<dynamic>.from(text.map((x) => x)), */
/*         "user": List<dynamic>.from(user.map((x) => x.toJson())), */
/*       }; */
/* } */

/* class LinkShareMetadata { */
/*   LinkShareMetadata({ */
/*     required this.securityUpdateEligible, */
/*     required this.securityUpdateEnabled, */
/*   }); */

/*   bool securityUpdateEligible; */
/*   bool securityUpdateEnabled; */

/*   factory LinkShareMetadata.fromJson(Map<String, dynamic> json) => */
/*       LinkShareMetadata( */
/*         securityUpdateEligible: json["securityUpdateEligible"], */
/*         securityUpdateEnabled: json["securityUpdateEnabled"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "securityUpdateEligible": securityUpdateEligible, */
/*         "securityUpdateEnabled": securityUpdateEnabled, */
/*       }; */
/* } */

/* class ShortcutDetails { */
/*   ShortcutDetails({ */
/*     required this.targetId, */
/*     required this.targetMimeType, */
/*     required this.targetResourceKey, */
/*   }); */

/*   String targetId; */
/*   String targetMimeType; */
/*   String targetResourceKey; */

/*   factory ShortcutDetails.fromJson(Map<String, dynamic> json) => */
/*       ShortcutDetails( */
/*         targetId: json["targetId"], */
/*         targetMimeType: json["targetMimeType"], */
/*         targetResourceKey: json["targetResourceKey"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "targetId": targetId, */
/*         "targetMimeType": targetMimeType, */
/*         "targetResourceKey": targetResourceKey, */
/*       }; */
/* } */

/* class VideoMediaMetadata { */
/*   VideoMediaMetadata({ */
/*     required this.width, */
/*     required this.height, */
/*     required this.durationMillis, */
/*   }); */

/*   int width; */
/*   int height; */
/*   int durationMillis; */

/*   factory VideoMediaMetadata.fromJson(Map<String, dynamic> json) => */
/*       VideoMediaMetadata( */
/*         width: json["width"], */
/*         height: json["height"], */
/*         durationMillis: json["durationMillis"], */
/*       ); */

/*   Map<String, dynamic> toJson() => { */
/*         "width": width, */
/*         "height": height, */
/*         "durationMillis": durationMillis, */
/*       }; */
/* } */
