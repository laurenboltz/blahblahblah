view: users {
  sql_table_name: demo_db.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }


  parameter: test {
    type: string
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    link: {
      url: "/explore/lauren_test/order_items?fields=users.city&f[users.test]={{ _field._name | url_encode }}"
      label: "test"
      #       url: "/dashboards/152?test%20filter={{ _field._value | url_encode }}"
    }
    link: {
      url: "/dashboards/152?Test%20Filter={{ _field._name | url_encode }}"
      label: "dashboard test"
    }
    }


  dimension: is_female {
    type: yesno
    sql: ${gender} = 'f' ;;
  }


  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
#     html:
#     {% if value > 100 %}
#     <p style="color: black; background-color: lightblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
#     {% elsif value >1000 %}
#     <p style="color: black; background-color: lightgreen; font-size:100%; text-align:center">{{ rendered_value }}</p>
#     {% else %}
#     <p style="color: black; background-color: orange; font-size:100%; text-align:center">{{ rendered_value }}</p>
#     {% endif %};;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      events.count,
      orders.count,
      user_data.count
    ]
  }
}
