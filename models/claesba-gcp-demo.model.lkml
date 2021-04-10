connection: "claesba_gcp_demo"

# include all the views
include: "/views/**/*.view"

datagroup: claesba_gcp_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: claesba_gcp_demo_default_datagroup

explore: vworders {
  label: "test2"

join:  customer {
  sql_on: ${vworders.first_name} = ${customer.first_name} AND ${vworders.last_name} = ${customer.last_name}  ;;
  relationship: many_to_one
  type: left_outer # Could be excluded since left_outer is the default
  fields: [] #dit zou de hele study view moeten hiden
  }
join:  product {
  sql_on: ${vworders.product} = ${product.product_code} ;;
  relationship: many_to_one
  type: left_outer # Could be excluded since left_outer is the default
  fields: [] #dit zou de hele study view moeten hiden
  }
}
