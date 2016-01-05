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

  - measure: count
    type: count
    drill_fields: []

