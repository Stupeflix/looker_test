- view: shareprocessor_etl
  sql_table_name: public.shareprocessor_etl
  fields:

  - dimension: app_release
    sql: ${TABLE}.app_release

  - dimension: app_version
    sql: ${TABLE}.app_version

  - dimension: completed
    sql: ${TABLE}.completed

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date


  - dimension: is_completed
    type: yesno
    sql: ${completed} = 'True' 

## user unique_id
## most successful service to share videos
## sessionizing events
## number of completion of sharing action for each service vs. number of errors (not completed)
  - dimension: distinct_id
    sql: ${TABLE}.distinct_id

  - dimension: model
    sql: ${TABLE}.model

  - dimension: os_version
    sql: ${TABLE}.os_version

  - dimension: service
    sql: ${TABLE}.service

  - dimension: wifi
    type: yesno
    sql: ${TABLE}.wifi
    
  - measure: number_completed
    type: count
    filter: 
      is_completed: 'Yes'
    drill_fields: [distinct_id, date, app_version ]
  
  - measure: completion_rate
    type: number
    sql: 100.0 * ${number_completed} / ${count}
    decimals: 2

  - measure: count
    type: count
    drill_fields: []

