{{
  config({    
    "materialized": "view",
    "sql_header": "Asdfasdfafw",
    "tags": ['tag1',"tag2"],
    "on_schema_change": "append_new_columns",
    "alias": "'asdfq3w4fqdf'",
    "enabled": true,
    "database": "mydb",
    "schema": "'my_schema'",
    "docs": {"show": true},
    "persist_docs": {"relation": false, "columns": true},
    "pre_hook": ["{{single_prehook()}}"],
    "post_hook": ["singleValue",'soemValue',"Grant permission on {{this}} after","{{mac_post_hook()}}"]
  })
}}

WITH env_uitesting_shared_mid_model_1 AS (

  SELECT * 
  
  FROM {{ ref('env_uitesting_shared_mid_model_1')}}

),

Reformat_1 AS (

  SELECT * 
  
  FROM env_uitesting_shared_mid_model_1 AS in0

),

env_uitesting_shared_parent_model_1 AS (

  SELECT * 
  
  FROM {{ ref('env_uitesting_shared_parent_model_1')}}

),

Join_1 AS (

  SELECT 
    in0.c_tinyint AS c_tinyint,
    in0.c_smallint AS c_smallint,
    in0.c_int AS c_int,
    in0.c_bigint AS c_bigint,
    in0.c_float AS c_float,
    in0.c_double AS c_double,
    in0.c_string AS c_string,
    in0.c_boolean AS c_boolean,
    in0.c_array AS c_array,
    in0.c_struct AS c_struct
  
  FROM Reformat_1 AS in0
  INNER JOIN env_uitesting_shared_parent_model_1 AS in1
     ON in0.c_bigint = in1.c_bigint

)

SELECT *

FROM Join_1
