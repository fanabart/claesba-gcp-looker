view: vworders {
  sql_table_name: `gcp-claesba.landing.vworders`
    ;;

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: line_nr {
    type: number
    sql: ${TABLE}.LineNr ;;
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

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: shop {
    type: string
    sql: ${TABLE}.Shop ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UnitPrice ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
