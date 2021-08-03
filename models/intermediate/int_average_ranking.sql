select bookid
, round(avg(score),2) as avg_score
, count(score) as vote_count
from {{ source('public','ranking')}}
group by bookid