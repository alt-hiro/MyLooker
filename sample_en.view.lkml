view: sample_en {
  sql_table_name: public.sample_en ;;


## ##############################################################
## Dimension Section
##

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY"
    drill_fields: [city];;
  }

  dimension: customer_category {
    type: string
    sql: ${TABLE}."CUSTOMER_CATEGORY" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: discount_rate {
    type: number
    sql: ${TABLE}."DISCOUNT_RATE" ;;
  }


  dimension: order_id {
    type: string
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: prefecture {
    type: string
    sql: ${TABLE}."PREFECTURE" ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}."PRODUCT_CATEGORY" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_id_only {
    type: string
    sql: right(${TABLE}."PRODUCT_ID",8) ;;
  }

  dimension: product_id_digit4 {
    type: string
    sql: left(right(${TABLE}."PRODUCT_ID",8),4) ;;
  }

  dimension: produtct_name {
    type: string

    sql: ${TABLE}."PRODUTCT_NAME" ;;
  }

  dimension: produtct_subcategory {
    type: string
    sql: ${TABLE}."PRODUTCT_SUBCATEGORY" ;;
  }


  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}."ROW_ID" ;;
  }



  dimension: ship_mode {
    type: string
    sql: ${TABLE}."SHIP_MODE" ;;
  }


## ##############################################################
## Date Section
##
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
    sql: ${TABLE}."SHIP_DATE" ;;
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
    sql: ${TABLE}."ORDER_DATE";;
  }


## ##############################################################
## Measure Section
##
  measure: count {
    type: count
    drill_fields: [produtct_name, customer_name]
  }

  measure: sales {
    type: sum
    sql: ${TABLE}."SALES";;
    drill_fields: [mydrill*]
  }

  measure: profit {
    type: sum
    sql: ${TABLE}."PROFIT" ;;
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}."QUANTITY" ;;
  }

## ##############################################################
## Drill Section
##
  set: mydrill{
    fields: [order_id, order_date, sales]
  }


}
