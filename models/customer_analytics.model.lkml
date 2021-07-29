connection: "customer_analytics"

# include all the views
include: "/views/**/*.view"

datagroup: customer_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customer_analytics_default_datagroup

explore: client_cleansed {}

explore: test {}

explore: train {}
