- dashboard: hkex_bau
  title: HKEx_BAU
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: V024zca8PYBGsRHNZTzyMu
  elements:
  - title: New Tile
    name: New Tile
    model: bigquery_information_schema
    explore: jobs
    type: looker_line
    fields: [jobs.count, jobs.start_time_date]
    fill_fields: [jobs.start_time_date]
    filters:
      date.date_filter: 100 days
      tables.table_schema: '"HKEx_demo_securities_market"'
    sorts: [jobs.start_time_date desc]
    limit: 500
    column_limit: 50
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen: {}
    row: 0
    col: 0
    width: 14
    height: 11
  filters:
  - name: Date Limit
    title: Date Limit
    type: field_filter
    default_value: 8 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: bigquery_information_schema
    explore: jobs_in_project
    listens_to_filters: []
    field: date.date_filter

  # - name: dataset
  #   title: dataset
  #   type: field_filter
  #   default_value: HKEx_demo_securities_market
  #   required: false
  #   field: tables.table_schema
