- view: all_events
  sql_table_name: public.all_events
  fields:

  - dimension: app_release
    sql: ${TABLE}.app_release

  - dimension: app_version
    sql: ${TABLE}.app_version

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: distinct_id
    sql: ${TABLE}.distinct_id

  - dimension: event
    sql: ${TABLE}.event

  - dimension: model
    sql: ${TABLE}.model

  - dimension: os_version
    sql: ${TABLE}.os_version

  - dimension: wifi
    type: yesno
    sql: ${TABLE}.wifi

  - measure: count
    type: count
    drill_fields: []

