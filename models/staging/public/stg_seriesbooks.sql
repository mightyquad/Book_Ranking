with series_books as (
    select bookid
        , seriesid
        , seriesnumber as series_book_order
    from  {{ source('public','seriesbooks')}}
)

select * from series_books