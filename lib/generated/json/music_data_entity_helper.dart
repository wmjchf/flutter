import 'package:flutter_demo/models/music_data_entity.dart';

musicDataEntityFromJson(MusicDataEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new MusicDataResult().fromJson(json['result']);
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> musicDataEntityToJson(MusicDataEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] = entity.result.toJson();
	}
	data['code'] = entity.code;
	return data;
}

musicDataResultFromJson(MusicDataResult data, Map<String, dynamic> json) {
	if (json['songs'] != null) {
		data.songs = new List<MusicDataResultSong>();
		(json['songs'] as List).forEach((v) {
			data.songs.add(new MusicDataResultSong().fromJson(v));
		});
	}
	if (json['hasMore'] != null) {
		data.hasMore = json['hasMore'];
	}
	if (json['songCount'] != null) {
		data.songCount = json['songCount']?.toInt();
	}
	return data;
}

Map<String, dynamic> musicDataResultToJson(MusicDataResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.songs != null) {
		data['songs'] =  entity.songs.map((v) => v.toJson()).toList();
	}
	data['hasMore'] = entity.hasMore;
	data['songCount'] = entity.songCount;
	return data;
}

musicDataResultSongFromJson(MusicDataResultSong data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['artists'] != null) {
		data.artists = new List<MusicDataResultSongsArtist>();
		(json['artists'] as List).forEach((v) {
			data.artists.add(new MusicDataResultSongsArtist().fromJson(v));
		});
	}
	if (json['album'] != null) {
		data.album = new MusicDataResultSongsAlbum().fromJson(json['album']);
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['alias'] != null) {
		data.alias = new List<dynamic>();
		data.alias.addAll(json['alias']);
	}
	if (json['rtype'] != null) {
		data.rtype = json['rtype']?.toInt();
	}
	if (json['ftype'] != null) {
		data.ftype = json['ftype']?.toInt();
	}
	if (json['mvid'] != null) {
		data.mvid = json['mvid']?.toInt();
	}
	if (json['fee'] != null) {
		data.fee = json['fee']?.toInt();
	}
	if (json['rUrl'] != null) {
		data.rUrl = json['rUrl'];
	}
	if (json['mark'] != null) {
		data.mark = json['mark']?.toInt();
	}
	return data;
}

Map<String, dynamic> musicDataResultSongToJson(MusicDataResultSong entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	if (entity.artists != null) {
		data['artists'] =  entity.artists.map((v) => v.toJson()).toList();
	}
	if (entity.album != null) {
		data['album'] = entity.album.toJson();
	}
	data['duration'] = entity.duration;
	data['copyrightId'] = entity.copyrightId;
	data['status'] = entity.status;
	if (entity.alias != null) {
		data['alias'] =  [];
	}
	data['rtype'] = entity.rtype;
	data['ftype'] = entity.ftype;
	data['mvid'] = entity.mvid;
	data['fee'] = entity.fee;
	data['rUrl'] = entity.rUrl;
	data['mark'] = entity.mark;
	return data;
}

musicDataResultSongsArtistFromJson(MusicDataResultSongsArtist data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'];
	}
	if (json['alias'] != null) {
		data.alias = new List<dynamic>();
		data.alias.addAll(json['alias']);
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize']?.toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId']?.toInt();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url']?.toString();
	}
	if (json['img1v1'] != null) {
		data.img1v1 = json['img1v1']?.toInt();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'];
	}
	return data;
}

Map<String, dynamic> musicDataResultSongsArtistToJson(MusicDataResultSongsArtist entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	if (entity.alias != null) {
		data['alias'] =  [];
	}
	data['albumSize'] = entity.albumSize;
	data['picId'] = entity.picId;
	data['img1v1Url'] = entity.img1v1Url;
	data['img1v1'] = entity.img1v1;
	data['trans'] = entity.trans;
	return data;
}

musicDataResultSongsAlbumFromJson(MusicDataResultSongsAlbum data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['artist'] != null) {
		data.artist = new MusicDataResultSongsAlbumArtist().fromJson(json['artist']);
	}
	if (json['publishTime'] != null) {
		data.publishTime = json['publishTime']?.toInt();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	if (json['copyrightId'] != null) {
		data.copyrightId = json['copyrightId']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId']?.toInt();
	}
	if (json['mark'] != null) {
		data.mark = json['mark']?.toInt();
	}
	return data;
}

Map<String, dynamic> musicDataResultSongsAlbumToJson(MusicDataResultSongsAlbum entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	if (entity.artist != null) {
		data['artist'] = entity.artist.toJson();
	}
	data['publishTime'] = entity.publishTime;
	data['size'] = entity.size;
	data['copyrightId'] = entity.copyrightId;
	data['status'] = entity.status;
	data['picId'] = entity.picId;
	data['mark'] = entity.mark;
	return data;
}

musicDataResultSongsAlbumArtistFromJson(MusicDataResultSongsAlbumArtist data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['picUrl'] != null) {
		data.picUrl = json['picUrl'];
	}
	if (json['alias'] != null) {
		data.alias = new List<dynamic>();
		data.alias.addAll(json['alias']);
	}
	if (json['albumSize'] != null) {
		data.albumSize = json['albumSize']?.toInt();
	}
	if (json['picId'] != null) {
		data.picId = json['picId']?.toInt();
	}
	if (json['img1v1Url'] != null) {
		data.img1v1Url = json['img1v1Url']?.toString();
	}
	if (json['img1v1'] != null) {
		data.img1v1 = json['img1v1']?.toInt();
	}
	if (json['trans'] != null) {
		data.trans = json['trans'];
	}
	return data;
}

Map<String, dynamic> musicDataResultSongsAlbumArtistToJson(MusicDataResultSongsAlbumArtist entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['picUrl'] = entity.picUrl;
	if (entity.alias != null) {
		data['alias'] =  [];
	}
	data['albumSize'] = entity.albumSize;
	data['picId'] = entity.picId;
	data['img1v1Url'] = entity.img1v1Url;
	data['img1v1'] = entity.img1v1;
	data['trans'] = entity.trans;
	return data;
}