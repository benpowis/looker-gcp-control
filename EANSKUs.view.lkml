view: eanskus {
    derived_table: {
      sql:
       SELECT *
       FROM  `mindful-agency-136314.Jess.EAN_Master_List`
       UNION ALL
       SELECT *
       FROM  `mindful-agency-136314.Jess.EAN_DST_List`
      UNION ALL
       SELECT *
       FROM  `mindful-agency-136314.Jess.EAN_Merch_List`
      UNION ALL
       SELECT *
       FROM  `mindful-agency-136314.Jess.EAN_IT_OPs_List`
      UNION ALL
       SELECT *
       FROM  `mindful-agency-136314.Jess.EAN_WH_List`;;
    }


  dimension: EAN {
    type:  string
    sql:${TABLE}.EAN ;;
  }

  dimension: SKU {
    type:  string
    sql:${TABLE}.SKU ;;
  }

  dimension: USER {
    type:  string
    sql:${TABLE}.USER ;;
  }
 }
