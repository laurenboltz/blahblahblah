- dashboard: kevin_ecom_dash
  title: Changing Title Dashboard
  layout: newspaper
  elements:
  # - title: testing testing
  #   title_text: TESTING123
  #   name: testing testing
  #   type: text
  #   body: 'boopbop'
  - title: Aging Dashboard
    # title_text: TESTING321
    title_text: <img src="https://absolutercm.nhin.com/emerald/images/AAR%20Header%20Logo22.png" width="400" height="60"/>
    name: Aging Dashboard
    type: text
    # subtitle_text: <font color="black" size="6"> Aging Dashboard </font>
    body: 'blahblah'
  - name: Aging Dashboard2
    type: text
    title_text: <img src="https://absolutercm.nhin.com/emerald/images/AAR%20Header%20Logo22.png" width="400" height="60"/>
    subtitle_text: <font color="white" size="6">Aging Dashboard</font>
    body_text: ''
  - title: New Tile - Pivot
    name: New Tile - Pivot
    model: kevin_kevin_kevin
    explore: order_items
    type: looker_column
    fields: [order_items.count, products.department, products.category]
    pivots: [products.department]
    filters: {}
    sorts: [products.department 0, order_items.count desc 2]
    limit: 500
    row_total: right
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen:
      Category: products.category
    row: 0
    col: 0
    width: 8
    height: 6
  filters:
  - name: Category
    title: Category
    type: field_filter
    default_value: '%jean%'
    allow_multiple_values: true
    required: false
    model: kevin_kevin_kevin
    explore: order_items
    listens_to_filters: []
    field: products.category

  #     filters:
  # - name: Campaign Name
  #   title: Campaign Name
  #   type: string_filter
  #   default_value: "%SYN%"
  #   allow_multiple_values: true
  #   required: false
