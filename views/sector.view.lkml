view: sector {
  sql_table_name: `sunivy-for-example.hkex_listing.sector` ;;

  measure: count {
    type: count
  }

  dimension: Stock_Code {
    type: string
    sql:  ${TABLE}.Stock_Code ;;
  }

  dimension: Company_Name {
    type: string
    sql:  ${TABLE}.Company_Name ;;
  }

  dimension: HKEX_industry {
    type: string
    sql:  ${TABLE}.HKEX_industry ;;
  }

  dimension: HKEX_sector {
    type: string
    sql:  ${TABLE}.HKEX_sector ;;
  }
}
