

view: table_usage_analysis {
  sql_table_name: `mindful-agency-136314.Sam.RPandPMtableusage` ;;

  dimension_group: creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_time ;;
  }
  dimension: duration_seconds {
    type: number
    sql: ${TABLE}.duration_seconds ;;
  }
  dimension: gb_processed {
    type: number
    sql: ${TABLE}.gb_processed ;;
  }
  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }
  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }
  dimension: table_id {
    type: string
    sql: ${TABLE}.table_id ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }
  measure: count {
    type: count
  }
}
