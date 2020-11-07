view: maggie_dt {
  derived_table: {
    explore_source: users {
      column: gender_list {}
      column: state {}
    }
  }
  dimension: gender_list {
    type: number
    sql: REPLACE(${TABLE}.gender_list,'|RECORD|',', ') ;;
    html: {% assign words = {{value}} | split: ', ' %}
         <ul>
         {% for word in words %}
         <li>{{ word }}</li>
        {% endfor %} ;;
  }
  dimension: state {}
}

# }
