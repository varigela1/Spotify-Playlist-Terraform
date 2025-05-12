resource "spotify_playlist" "Tollywood" {
    name="Tollywood"
    tracks=["1GSaroteGSJUZ60fFQhr7J"]
}

data "spotify_search_track" "Devi_Sri_Prasad"{
    artist="Devi Sri Prasad"
}


resource "spotify_playlist" "DSP" {
    name="DSP"
    tracks=[data.spotify_search_track.Devi_Sri_Prasad.tracks[0].id,
    data.spotify_search_track.Devi_Sri_Prasad.tracks[1].id,
    data.spotify_search_track.Devi_Sri_Prasad.tracks[2].id,
    data.spotify_search_track.Devi_Sri_Prasad.tracks[3].id,
    data.spotify_search_track.Devi_Sri_Prasad.tracks[4].id]
}

data "spotify_search_track" "Mani_Sharma"{
    artist="Mani Sharma"
}


resource "spotify_playlist" "MS" {
    name="MS"
    tracks=[data.spotify_search_track.Mani_Sharma.tracks[0].id,
    data.spotify_search_track.Mani_Sharma.tracks[1].id,
    data.spotify_search_track.Mani_Sharma.tracks[2].id,
    data.spotify_search_track.Mani_Sharma.tracks[3].id,
    data.spotify_search_track.Mani_Sharma.tracks[4].id]
}
