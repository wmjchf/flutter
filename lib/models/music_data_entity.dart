import 'package:flutter_demo/generated/json/base/json_convert_content.dart';

class MusicDataEntity with JsonConvert<MusicDataEntity> {
	MusicDataResult result;
	int code;
}

class MusicDataResult with JsonConvert<MusicDataResult> {
	List<MusicDataResultSong> songs;
	bool hasMore;
	int songCount;
}

class MusicDataResultSong with JsonConvert<MusicDataResultSong> {
	int id;
	String name;
	List<MusicDataResultSongsArtist> artists;
	MusicDataResultSongsAlbum album;
	int duration;
	int copyrightId;
	int status;
	List<dynamic> alias;
	int rtype;
	int ftype;
	int mvid;
	int fee;
	dynamic rUrl;
	int mark;
}

class MusicDataResultSongsArtist with JsonConvert<MusicDataResultSongsArtist> {
	int id;
	String name;
	dynamic picUrl;
	List<dynamic> alias;
	int albumSize;
	int picId;
	String img1v1Url;
	int img1v1;
	dynamic trans;
}

class MusicDataResultSongsAlbum with JsonConvert<MusicDataResultSongsAlbum> {
	int id;
	String name;
	MusicDataResultSongsAlbumArtist artist;
	int publishTime;
	int size;
	int copyrightId;
	int status;
	int picId;
	int mark;
}

class MusicDataResultSongsAlbumArtist with JsonConvert<MusicDataResultSongsAlbumArtist> {
	int id;
	String name;
	dynamic picUrl;
	List<dynamic> alias;
	int albumSize;
	int picId;
	String img1v1Url;
	int img1v1;
	dynamic trans;
}
