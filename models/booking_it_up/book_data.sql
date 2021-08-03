select b.title 
, a.author
, s.series
, sb.series_book_order
, r.avg_score
, r.vote_count


from {{ source('public','book')}} b
left join {{ source('public','author')}} a on a.authorid = b.authorid
left join {{ref('stg_seriesbooks')}} sb on sb.bookid = b.bookid
left join {{ref('stg_series')}} s on s.seriesid = sb.seriesid
left join {{ref('int_average_ranking')}} r on r.bookid = b.bookid