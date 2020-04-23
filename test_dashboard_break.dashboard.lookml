- dashboard: ardss_aging_test_dashboard
  title: Aging TEST Dashboard
  layout: newspaper
  embed_style:
    background_color: "#18731f"
    show_title: true
    title_color: "#3a4245"
    ##show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Aging Dashboard
    type: text
    title_text: <img src="https://absolutercm.nhin.com/emerald/images/AAR%20Header%20Logo22.png"
      width="400" height="60"/>
    subtitle_text: <font color="white" size="6">Aging Dashboard</font>
    body_text: ''
    row: 0
    col: 0
    width: 8
    height: 3
  - title: Untitled
    name: Untitled
    model: lauren_test
    explore: order_items
    type: single_value
    fields: [orders.id]
    limit: 500
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    single_value_title: Customer
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: 'true'
    series_types: {}
    # listen:
    #   Chain ID: orders.id
    row: 0
    col: 16
    width: 8
    height: 3
  # filters:
  # - name: Chain ID
  #   title: Chain ID
  #   type: field_filter
  #   allow_multiple_values: false
  #   required: false
  #   lauren_test: kevin_kevin_kevin
  #   explore: order_items
  #   listens_to_filters: []
  #   field: orders.id
