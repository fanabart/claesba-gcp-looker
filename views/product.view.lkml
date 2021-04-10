view: product {
  sql_table_name: `landing.product`
    ;;

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.ProductCategory ;;
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.ProductCode ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.ProductDescription ;;
  }

  dimension: storage {
    type: string
    sql: ${TABLE}.Storage ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: video_processor {
    type: string
    sql: ${TABLE}.VideoProcessor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
