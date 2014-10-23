require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT tracks.name, albums.title, artists.name
    FROM tracks, artists, albums
    WHERE tracks.album_id = albums.id
    AND artists.id = albums.artist_id")
end

# def stats_on(db, genre_name)
#   # TODO: For the given category of music, return the number of tracks
#   # and the average song length (as a stats hash)
#   hash = {}
#   hash[:category] = "#{genre_name}"
#   hash[:number_of_songs] = db.execute("SELECT COUNT(*)
#     FROM tracks, genres
#     WHERE tracks.genre_id = genres.id
#     AND genres.name = '#{genre_name}'").flatten[0]
#   sum = db.execute("SELECT SUM(milliseconds)
#     FROM tracks, genres
#     WHERE tracks.genre_id = genres.id
#     AND genres.name = '#{genre_name}'").flatten[0].round(2)
#   avg = (sum.round(2) / 60000) / hash[:number_of_songs]
#   avg = avg.round(2)
#   hash[:avg_length] = avg
#   hash
# end



def stats_on(db, genre_name)
 # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
 query = db.execute("SELECT COUNT(t.name), ROUND(AVG((t.milliseconds)/60000.0),2)
 FROM tracks t
 JOIN genres g ON (t.genre_id = g.id)
 WHERE g.name = '#{genre_name}';").flatten
 { category: "#{genre_name}", number_of_songs: query[0], avg_length: query[1] }
end

def top_five_artists(db, genre_name)
 # TODO: return list of top 5 rock artists
 db.execute("SELECT a.name, COUNT(*) as c
   FROM tracks t
   JOIN albums al ON (al.id = t.album_id)
   JOIN artists a ON (a.id = al.artist_id)
   JOIN genres g ON (t.genre_id = g.id)
   WHERE g.name = '#{genre_name}'
   GROUP BY a.name
   ORDER BY c DESC
   LIMIT 5
   ;")
end



