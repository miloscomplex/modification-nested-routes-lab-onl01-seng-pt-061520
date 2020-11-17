module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def song_select(artist)
    if artist.songs.nil?
      select_tag "song[artist_id]",
      options_from_collection_for_select(Song.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", songs.artist_id
    end
  end
end
