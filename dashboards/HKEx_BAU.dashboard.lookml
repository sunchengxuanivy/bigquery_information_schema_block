- dashboard: client_insights
  title: Client Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: V024zca8PYBGsRHNZTzyMu
  elements:
  - title: Interest by Region
    name: Interest by Region
    model: bigquery_information_schema
    explore: jobs
    type: looker_google_map
    fields: [jobs.region, jobs.count]
    filters: {}
    sorts: [jobs.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 1
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: custom
    map_zoom: 1.7
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    map_value_colors: ["#13426b", "#d1dde6", "#f4364b"]
    quantize_map_value_colors: true
    reverse_map_value_colors: true
    defaults_version: 0
    map: auto
    map_projection: ''
    quantize_colors: false
    map_scale_indicator: 'off'
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 0
    col: 13
    width: 9
    height: 6
  - title: ''
    name: ''
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.count]
    filters: {}
    sorts: [jobs.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Searches
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: fit_data
    map_pannable: true
    map_zoomable: false
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    map_scale_indicator: 'off'
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 0
    col: 3
    width: 3
    height: 6
  - title: Datasets Used in Conjunction
    name: Datasets Used in Conjunction
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.referenced_tables_string, jobs.count]
    filters:
      jobs.referenced_tables_string: "-EMPTY"
    sorts: [jobs.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      jobs.count:
        is_active: true
        palette:
          palette_id: 41d49301-2707-69b0-d283-4368c57fd661
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#f4364c"
    defaults_version: 1
    hidden_fields: []
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 6
    col: 11
    width: 6
    height: 6
  - title: Top 10 Consuming Queries
    name: Top 10 Consuming Queries
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.query_text, jobs.total_gbytes_billed]
    filters: {}
    sorts: [jobs.total_gbytes_billed desc 0]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      jobs.total_gbytes_billed:
        is_active: true
        palette:
          palette_id: 98f92fcb-8599-737f-690d-b8e881d758da
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#f4364c"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 6
    col: 17
    width: 6
    height: 6
  - title: Most Queried Securities
    name: Most Queried Securities
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.related_security_code, jobs.count]
    filters:
      jobs.related_security_code: "-EMPTY"
    sorts: [jobs.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      jobs.count:
        is_active: true
        palette:
          palette_id: d6aa1de6-8402-32e4-d959-fd17f8944d4b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#f4364c"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 6
    col: 0
    width: 6
    height: 6
  - title: By Client
    name: By Client
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [jobs.user_email, jobs.count]
    filters: {}
    sorts: [jobs.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      jobs.count:
        is_active: true
        palette:
          palette_id: dd84c69d-c8a2-ac4f-3697-9247d74ebe52
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#13426b"
          - "#f4364c"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          custom: {id: 0e5ec6ec-c94d-7fd1-fc88-2c77762e9887, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#13426b", offset: 100}]},
          options: {steps: 3, stepped: true}}, bold: false, italic: false, strikethrough: false,
        fields: !!null ''}]
    series_value_format:
      jobs.count: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    title_hidden: true
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 12
    col: 0
    width: 5
    height: 6
  - title: Searches Since Launch
    name: Searches Since Launch
    model: bigquery_information_schema
    explore: jobs
    type: single_value
    fields: [jobs.count]
    filters:
      date.date_filter: after 2023/02/01 00:00
    sorts: [jobs.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Searches Since Launch
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light_no_labels
    map_position: fit_data
    map_pannable: true
    map_zoomable: false
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    map_scale_indicator: 'off'
    listen:
      " Dataset_mapped": tables.dataset_id_mapped
    row: 0
    col: 0
    width: 3
    height: 6
  - title: "# of Searches in Historical Full Book"
    name: "# of Searches in Historical Full Book"
    model: bigquery_information_schema
    explore: jobs
    type: looker_line
    fields: [date.__hour, tables.dataset_id_mapped, tables.count]
    pivots: [tables.dataset_id_mapped]
    fill_fields: [date.__hour]
    filters: {}
    sorts: [tables.dataset_id_mapped, date.__hour desc]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: bfba1783-cb2e-8747-bc08-6191a73473a0
        label: Custom
        type: discrete
        colors:
        - "#13426b"
        - "#f4364c"
        - "#d1dde6"
        - "#9d9d9d"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 0
    col: 6
    width: 7
    height: 6
  - title: Queries by Sector
    name: Queries by Sector
    model: bigquery_information_schema
    explore: jobs
    type: looker_grid
    fields: [sector.HKEX_industry, jobs.count]
    filters:
      sector.HKEX_industry: "-NULL"
    sorts: [jobs.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    hidden_fields: []
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date Limit: date.date_filter
      " Dataset_mapped": tables.dataset_id_mapped
    row: 6
    col: 6
    width: 5
    height: 6
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
  - name: " Dataset_mapped"
    title: " Dataset_mapped"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bigquery_information_schema
    explore: jobs
    listens_to_filters: []
    field: tables.dataset_id_mapped
