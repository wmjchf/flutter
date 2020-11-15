import '../../models/comment_data_entity.dart';

commentDataEntityFromJson(CommentDataEntity data, Map<String, dynamic> json) {
	if (json['isMusician'] != null) {
		data.isMusician = json['isMusician'];
	}
	if (json['userId'] != null) {
		data.userId = json['userId']?.toInt();
	}
	if (json['topComments'] != null) {
		data.topComments = new List<dynamic>();
		data.topComments.addAll(json['topComments']);
	}
	if (json['moreHot'] != null) {
		data.moreHot = json['moreHot'];
	}
	if (json['hotComments'] != null) {
		data.hotComments = new List<CommantDataHotCommants>();
		(json['hotComments'] as List).forEach((v) {
			data.hotComments.add(new CommantDataHotCommants().fromJson(v));
		});
	}
	if (json['commentBanner'] != null) {
		data.commentBanner = json['commentBanner'];
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['comments'] != null) {
		data.comments = new List<CommantDataCommants>();
		(json['comments'] as List).forEach((v) {
			data.comments.add(new CommantDataCommants().fromJson(v));
		});
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	if (json['more'] != null) {
		data.more = json['more'];
	}
	return data;
}

Map<String, dynamic> commentDataEntityToJson(CommentDataEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['isMusician'] = entity.isMusician;
	data['userId'] = entity.userId;
	if (entity.topComments != null) {
		data['topComments'] =  [];
	}
	data['moreHot'] = entity.moreHot;
	if (entity.hotComments != null) {
		data['hotComments'] =  entity.hotComments.map((v) => v.toJson()).toList();
	}
	data['commentBanner'] = entity.commentBanner;
	data['code'] = entity.code;
	if (entity.comments != null) {
		data['comments'] =  entity.comments.map((v) => v.toJson()).toList();
	}
	data['total'] = entity.total;
	data['more'] = entity.more;
	return data;
}

commantDataHotCommantsFromJson(CommantDataHotCommants data, Map<String, dynamic> json) {
	if (json['user'] != null) {
		data.user = new CommentDataHotCommentsUser().fromJson(json['user']);
	}
	if (json['beReplied'] != null) {
		data.beReplied = new List<dynamic>();
		data.beReplied.addAll(json['beReplied']);
	}
	if (json['pendantData'] != null) {
		data.pendantData = json['pendantData'];
	}
	if (json['showFloorComment'] != null) {
		data.showFloorComment = json['showFloorComment'];
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['commentId'] != null) {
		data.commentId = json['commentId']?.toInt();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['time'] != null) {
		data.time = json['time']?.toInt();
	}
	if (json['likedCount'] != null) {
		data.likedCount = json['likedCount']?.toInt();
	}
	if (json['expressionUrl'] != null) {
		data.expressionUrl = json['expressionUrl'];
	}
	if (json['commentLocationType'] != null) {
		data.commentLocationType = json['commentLocationType']?.toInt();
	}
	if (json['parentCommentId'] != null) {
		data.parentCommentId = json['parentCommentId']?.toInt();
	}
	if (json['decoration'] != null) {
		data.decoration = json['decoration'];
	}
	if (json['repliedMark'] != null) {
		data.repliedMark = json['repliedMark'];
	}
	if (json['liked'] != null) {
		data.liked = json['liked'];
	}
	return data;
}

Map<String, dynamic> commantDataHotCommantsToJson(CommantDataHotCommants entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.user != null) {
		data['user'] = entity.user.toJson();
	}
	if (entity.beReplied != null) {
		data['beReplied'] =  [];
	}
	data['pendantData'] = entity.pendantData;
	data['showFloorComment'] = entity.showFloorComment;
	data['status'] = entity.status;
	data['commentId'] = entity.commentId;
	data['content'] = entity.content;
	data['time'] = entity.time;
	data['likedCount'] = entity.likedCount;
	data['expressionUrl'] = entity.expressionUrl;
	data['commentLocationType'] = entity.commentLocationType;
	data['parentCommentId'] = entity.parentCommentId;
	data['decoration'] = entity.decoration;
	data['repliedMark'] = entity.repliedMark;
	data['liked'] = entity.liked;
	return data;
}

commentDataHotCommentsUserFromJson(CommentDataHotCommentsUser data, Map<String, dynamic> json) {
	if (json['locationInfo'] != null) {
		data.locationInfo = json['locationInfo'];
	}
	if (json['liveInfo'] != null) {
		data.liveInfo = json['liveInfo'];
	}
	if (json['anonym'] != null) {
		data.anonym = json['anonym']?.toInt();
	}
	if (json['userId'] != null) {
		data.userId = json['userId']?.toInt();
	}
	if (json['avatarDetail'] != null) {
		data.avatarDetail = json['avatarDetail'];
	}
	if (json['userType'] != null) {
		data.userType = json['userType']?.toInt();
	}
	if (json['remarkName'] != null) {
		data.remarkName = json['remarkName'];
	}
	if (json['vipRights'] != null) {
		data.vipRights = new CommentDataHotCommentsUserVipRights().fromJson(json['vipRights']);
	}
	if (json['nickname'] != null) {
		data.nickname = json['nickname']?.toString();
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl']?.toString();
	}
	if (json['authStatus'] != null) {
		data.authStatus = json['authStatus']?.toInt();
	}
	if (json['expertTags'] != null) {
		data.expertTags = json['expertTags'];
	}
	if (json['experts'] != null) {
		data.experts = json['experts'];
	}
	if (json['vipType'] != null) {
		data.vipType = json['vipType']?.toInt();
	}
	return data;
}

Map<String, dynamic> commentDataHotCommentsUserToJson(CommentDataHotCommentsUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['locationInfo'] = entity.locationInfo;
	data['liveInfo'] = entity.liveInfo;
	data['anonym'] = entity.anonym;
	data['userId'] = entity.userId;
	data['avatarDetail'] = entity.avatarDetail;
	data['userType'] = entity.userType;
	data['remarkName'] = entity.remarkName;
	if (entity.vipRights != null) {
		data['vipRights'] = entity.vipRights.toJson();
	}
	data['nickname'] = entity.nickname;
	data['avatarUrl'] = entity.avatarUrl;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['vipType'] = entity.vipType;
	return data;
}

commentDataHotCommentsUserVipRightsFromJson(CommentDataHotCommentsUserVipRights data, Map<String, dynamic> json) {
	if (json['associator'] != null) {
		data.associator = new CommentDataHotCommentsUserVipRightsAssociator().fromJson(json['associator']);
	}
	if (json['musicPackage'] != null) {
		data.musicPackage = json['musicPackage'];
	}
	if (json['redVipAnnualCount'] != null) {
		data.redVipAnnualCount = json['redVipAnnualCount']?.toInt();
	}
	if (json['redVipLevel'] != null) {
		data.redVipLevel = json['redVipLevel']?.toInt();
	}
	return data;
}

Map<String, dynamic> commentDataHotCommentsUserVipRightsToJson(CommentDataHotCommentsUserVipRights entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.associator != null) {
		data['associator'] = entity.associator.toJson();
	}
	data['musicPackage'] = entity.musicPackage;
	data['redVipAnnualCount'] = entity.redVipAnnualCount;
	data['redVipLevel'] = entity.redVipLevel;
	return data;
}

commentDataHotCommentsUserVipRightsAssociatorFromJson(CommentDataHotCommentsUserVipRightsAssociator data, Map<String, dynamic> json) {
	if (json['vipCode'] != null) {
		data.vipCode = json['vipCode']?.toInt();
	}
	if (json['rights'] != null) {
		data.rights = json['rights'];
	}
	return data;
}

Map<String, dynamic> commentDataHotCommentsUserVipRightsAssociatorToJson(CommentDataHotCommentsUserVipRightsAssociator entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['vipCode'] = entity.vipCode;
	data['rights'] = entity.rights;
	return data;
}

commantDataCommantsFromJson(CommantDataCommants data, Map<String, dynamic> json) {
	if (json['user'] != null) {
		data.user = new CommentDataCommentsUser().fromJson(json['user']);
	}
	if (json['beReplied'] != null) {
		data.beReplied = new List<dynamic>();
		data.beReplied.addAll(json['beReplied']);
	}
	if (json['pendantData'] != null) {
		data.pendantData = json['pendantData'];
	}
	if (json['showFloorComment'] != null) {
		data.showFloorComment = json['showFloorComment'];
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['commentId'] != null) {
		data.commentId = json['commentId']?.toInt();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['time'] != null) {
		data.time = json['time']?.toInt();
	}
	if (json['likedCount'] != null) {
		data.likedCount = json['likedCount']?.toInt();
	}
	if (json['expressionUrl'] != null) {
		data.expressionUrl = json['expressionUrl'];
	}
	if (json['commentLocationType'] != null) {
		data.commentLocationType = json['commentLocationType']?.toInt();
	}
	if (json['parentCommentId'] != null) {
		data.parentCommentId = json['parentCommentId']?.toInt();
	}
	if (json['decoration'] != null) {
		data.decoration = new CommentDataCommentsDecoration().fromJson(json['decoration']);
	}
	if (json['repliedMark'] != null) {
		data.repliedMark = json['repliedMark'];
	}
	if (json['liked'] != null) {
		data.liked = json['liked'];
	}
	return data;
}

Map<String, dynamic> commantDataCommantsToJson(CommantDataCommants entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.user != null) {
		data['user'] = entity.user.toJson();
	}
	if (entity.beReplied != null) {
		data['beReplied'] =  [];
	}
	data['pendantData'] = entity.pendantData;
	data['showFloorComment'] = entity.showFloorComment;
	data['status'] = entity.status;
	data['commentId'] = entity.commentId;
	data['content'] = entity.content;
	data['time'] = entity.time;
	data['likedCount'] = entity.likedCount;
	data['expressionUrl'] = entity.expressionUrl;
	data['commentLocationType'] = entity.commentLocationType;
	data['parentCommentId'] = entity.parentCommentId;
	if (entity.decoration != null) {
		data['decoration'] = entity.decoration.toJson();
	}
	data['repliedMark'] = entity.repliedMark;
	data['liked'] = entity.liked;
	return data;
}

commentDataCommentsUserFromJson(CommentDataCommentsUser data, Map<String, dynamic> json) {
	if (json['locationInfo'] != null) {
		data.locationInfo = json['locationInfo'];
	}
	if (json['liveInfo'] != null) {
		data.liveInfo = json['liveInfo'];
	}
	if (json['anonym'] != null) {
		data.anonym = json['anonym']?.toInt();
	}
	if (json['userId'] != null) {
		data.userId = json['userId']?.toInt();
	}
	if (json['avatarDetail'] != null) {
		data.avatarDetail = json['avatarDetail'];
	}
	if (json['userType'] != null) {
		data.userType = json['userType']?.toInt();
	}
	if (json['remarkName'] != null) {
		data.remarkName = json['remarkName'];
	}
	if (json['vipRights'] != null) {
		data.vipRights = json['vipRights'];
	}
	if (json['nickname'] != null) {
		data.nickname = json['nickname']?.toString();
	}
	if (json['avatarUrl'] != null) {
		data.avatarUrl = json['avatarUrl']?.toString();
	}
	if (json['authStatus'] != null) {
		data.authStatus = json['authStatus']?.toInt();
	}
	if (json['expertTags'] != null) {
		data.expertTags = json['expertTags'];
	}
	if (json['experts'] != null) {
		data.experts = json['experts'];
	}
	if (json['vipType'] != null) {
		data.vipType = json['vipType']?.toInt();
	}
	return data;
}

Map<String, dynamic> commentDataCommentsUserToJson(CommentDataCommentsUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['locationInfo'] = entity.locationInfo;
	data['liveInfo'] = entity.liveInfo;
	data['anonym'] = entity.anonym;
	data['userId'] = entity.userId;
	data['avatarDetail'] = entity.avatarDetail;
	data['userType'] = entity.userType;
	data['remarkName'] = entity.remarkName;
	data['vipRights'] = entity.vipRights;
	data['nickname'] = entity.nickname;
	data['avatarUrl'] = entity.avatarUrl;
	data['authStatus'] = entity.authStatus;
	data['expertTags'] = entity.expertTags;
	data['experts'] = entity.experts;
	data['vipType'] = entity.vipType;
	return data;
}

commentDataCommentsDecorationFromJson(CommentDataCommentsDecoration data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> commentDataCommentsDecorationToJson(CommentDataCommentsDecoration entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}