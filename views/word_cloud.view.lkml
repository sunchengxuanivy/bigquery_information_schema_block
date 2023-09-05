view: word_cloud {
  sql_table_name: `sunivy-for-example.hkex_listing.word_cloud_data` ;;

  measure: count {
    type: count
  }

  dimension: word {
    type: string
    sql:  ${TABLE}.word ;;
  }
}
