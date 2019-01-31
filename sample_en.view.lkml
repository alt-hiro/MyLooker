view: sample_en {
  sql_table_name: public.sample_en ;;

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: customer_category {
    type: string
    sql: ${TABLE}.CUSTOMER_CATEGORY ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: discount_rate {
    type: number
    sql: ${TABLE}.DISCOUNT_RATE ;;
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
    sql: ${TABLE}.ORDER_DATE ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: prefecture {
    type: string
    sql: ${TABLE}.PREFECTURE ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: produtct_name {
    type: string
    sql: ${TABLE}.PRODUTCT_NAME ;;
  }

  dimension: produtct_subcategory {
    type: string
    sql: ${TABLE}.PRODUTCT_SUBCATEGORY ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.PROFIT ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.ROW_ID ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.SALES ;;
  }

  dimension_group: ship {
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
    sql: ${TABLE}.SHIP_DATE ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.SHIP_MODE ;;
  }

  measure: count {
    type: count
    drill_fields: [produtct_name, customer_name]
  }
}
