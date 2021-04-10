view: orderlines {
  sql_table_name: `landing.orderlines`
    ;;

  dimension: line_nr {
    type: number
    sql: ${TABLE}.LineNr ;;
  }

  dimension: order_nr {
    type: string
    sql: ${TABLE}.OrderNr ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
