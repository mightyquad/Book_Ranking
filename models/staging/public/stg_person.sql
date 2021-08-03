with readers as (

    select first_name || ' ' || last_name as name
    , personid
    , age
    from {{ source('public','person')}}
)

select * from readers