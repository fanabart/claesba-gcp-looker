view: customer {
  sql_table_name: `landing.customer`
    ;;

  dimension: card_type {
    type: string
    sql: ${TABLE}.CardType ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
