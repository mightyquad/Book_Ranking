with series_name as (

    select seriesid
        , seriesname as series
        , summary
    from  {{ source('public','series')}}
)

select * from series_name