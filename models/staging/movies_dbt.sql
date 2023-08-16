with movie_data as (
select
*

from {{ source('movies_db', 'Movies_DB') }}
)


select 
title as Title,
id as Movie_Id,
overview as Overview,
release_date as Release_date,
vote_average as Imdb_Rating,
Concat('https://image.tmdb.org/t/p/original',poster_path) as Poster_Url
from movie_data
