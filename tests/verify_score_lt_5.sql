select score
from {{ ref('stg_ranking') }}
where score > 5
or score < 0