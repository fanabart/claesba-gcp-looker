view: orders {
  sql_table_name: `landing.orders`
    ;;

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_nr {
    type: string
    sql: ${TABLE}.OrderNr ;;
  }

  dimension: shop {
    type: string
    sql: ${TABLE}.Shop ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
