/*

Problems
Open up the postgres sandbox to complete these problems. Save your answers in a file subqueries.sql. Push to GitHub when you’re done.

-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

-- Get all playlist tracks where the playlist name is Music.

-- Get all track names for playlist_id 5.

-- Get all tracks where the genre is Comedy.

-- Get all tracks where the album is Fireball.

Get all tracks for the artist Queen ( 2 nested subqueries ).

*/

SELECT * 
FROM invoice 
WHERE invoice_id IN (
  SELECT invoice_id
  FROM invoice_line
  WHERE unit_price > 0.99
)

SELECT * 
FROM playlist_track
WHERE playlist_id IN (
  SELECT playlist_id
  FROM playlist
  WHERE name = 'Music'
)

SELECT *
FROM track
WHERE genre_id IN (
  SELECT genre_id
  FROM genre
  WHERE name = 'comedy'
)

SELECT *
FROM track
WHERE album_id IN (
  SELECT album_id
  FROM album
  WHERE title = 'Fireball'
)

SELECT *
FROM track
WHERE album_id IN (
  SELECT album_id
  FROM album
  WHERE artist_id IN (
  SELECT artist_id
  FROM artist
  WHERE name = 'Queen'
))