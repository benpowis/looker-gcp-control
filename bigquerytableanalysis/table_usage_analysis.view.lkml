

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
    label: "GB Processed"
    type: number
    sql: ${TABLE}.gb_processed ;;
    value_format_name: decimal_2
  }
  measure: total_gb_processed {
    label: "Total GB Processed"
    type: sum
    sql: ${gb_processed} ;;
    value_format_name: decimal_2
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
  dimension: old_or_new_world {
    type: string
    sql:
        CASE
          WHEN ${table_id} in ("RolledProductHistory","RolledProduct","DataDump","DataDumpHistory","DataDump_v2","ProductReport","ProductReportHistory","ProductReport_eng") then "Old World"
          WHEN ${table_id} in ("product_master","product_master_daily") then "New World"
          ELSE "Neither"
          END
    ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }
  measure: count {
    type: count
  }
}
