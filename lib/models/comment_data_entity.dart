import 'package:flutter_demo/generated/json/base/json_convert_content.dart';

class CommentDataEntity with JsonConvert<CommentDataEntity> {
	bool isMusician;
	int userId;
	List<dynamic> topComments;
	bool moreHot;
	List<CommantDataHotCommants> hotComments;
	dynamic commentBanner;
	int code;
	List<CommantDataCommants> comments;
	int total;
	bool more;
}

class CommantDataHotCommants with JsonConvert<CommantDataHotCommants> {
	CommentDataHotCommentsUser user;
	List<dynamic> beReplied;
	dynamic pendantData;
	dynamic showFloorComment;
	int status;
	int commentId;
	String content;
	int time;
	int likedCount;
	dynamic expressionUrl;
	int commentLocationType;
	int parentCommentId;
	dynamic decoration;
	dynamic repliedMark;
	bool liked;
}

class CommentDataHotCommentsUser with JsonConvert<CommentDataHotCommentsUser> {
	dynamic locationInfo;
	dynamic liveInfo;
	int anonym;
	int userId;
	dynamic avatarDetail;
	int userType;
	dynamic remarkName;
	CommentDataHotCommentsUserVipRights vipRights;
	String nickname;
	String avatarUrl;
	int authStatus;
	dynamic expertTags;
	dynamic experts;
	int vipType;
}

class CommentDataHotCommentsUserVipRights with JsonConvert<CommentDataHotCommentsUserVipRights> {
	CommentDataHotCommentsUserVipRightsAssociator associator;
	dynamic musicPackage;
	int redVipAnnualCount;
	int redVipLevel;
}

class CommentDataHotCommentsUserVipRightsAssociator with JsonConvert<CommentDataHotCommentsUserVipRightsAssociator> {
	int vipCode;
	bool rights;
}

class CommantDataCommants with JsonConvert<CommantDataCommants> {
	CommentDataCommentsUser user;
	List<dynamic> beReplied;
	dynamic pendantData;
	dynamic showFloorComment;
	int status;
	int commentId;
	String content;
	int time;
	int likedCount;
	dynamic expressionUrl;
	int commentLocationType;
	int parentCommentId;
	CommentDataCommentsDecoration decoration;
	dynamic repliedMark;
	bool liked;
}

class CommentDataCommentsUser with JsonConvert<CommentDataCommentsUser> {
	dynamic locationInfo;
	dynamic liveInfo;
	int anonym;
	int userId;
	dynamic avatarDetail;
	int userType;
	dynamic remarkName;
	dynamic vipRights;
	String nickname;
	String avatarUrl;
	int authStatus;
	dynamic expertTags;
	dynamic experts;
	int vipType;
}

class CommentDataCommentsDecoration with JsonConvert<CommentDataCommentsDecoration> {

}
