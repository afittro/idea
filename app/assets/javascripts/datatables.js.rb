require 'datatables/jquery.dataTables'

# remove comments to enable these optional components

# require 'datatables/extensions/AutoFill/dataTables.autoFill'
require 'datatables/extensions/Buttons/dataTables.buttons'
require 'datatables/extensions/Buttons/buttons.html5'
require 'datatables/extensions/Buttons/buttons.print'
require 'datatables/extensions/Buttons/buttons.flash'
# require 'datatables/extensions/ColReorder/dataTables.colReorder'
# require 'datatables/extensions/FixedColumns/dataTables.fixedColumns'
# require 'datatables/extensions/FixedHeader/dataTables.fixedHeader'
require 'datatables/extensions/KeyTable/dataTables.keyTable'
require 'datatables/extensions/Responsive/dataTables.responsive'
# require 'datatables/extensions/RowGroup/dataTables.rowGroup'
# require 'datatables/extensions/RowReorder/dataTables.rowReorder'
# require 'datatables/extensions/Scroller/dataTables.scroller'
# require 'datatables/extensions/Select/dataTables.select'

require 'datatables/dataTables.semanticui'
# require 'datatables/extensions/AutoFill/autoFill.semanticui'
require 'datatables/extensions/Buttons/buttons.semanticui'
require 'datatables/extensions/Responsive/responsive.semanticui'

# Global setting and initializer
`$.extend( $.fn.dataTable.defaults, {
  dom: "<'ui grid'<'eight wide middle aligned column'f><'four wide middle aligned column'i><'four wide middle right aligned column'l>><<'twelve wide column'tr>><'ui grid'<'six wide column'B><'ten wide right aligned column'p>>",
  responsive: true,
  pagingType: 'full_numbers',
  buttons: [ // skip actions column
    {extend: 'copy',  exportOptions: {columns: ':not(:last-child)'}},
    {extend: 'excel', exportOptions: {columns: ':not(:last-child)'}},
    {extend: 'pdf',   exportOptions: {columns: ':not(:last-child)'}},
    {extend: 'csv',   exportOptions: {columns: ':not(:last-child)'}},
    {extend: 'print', exportOptions: {columns: ':not(:last-child)'}}
  ]
});`
# see this for alternative that lets you specify specify class tags
# https://stackoverflow.com/questions/35333434/how-to-exclude-last-column-in-jquery-datatable

`$(document).on('preInit.dt', function(e, settings) {
  var api, table_id, url;
  api = new $.fn.dataTable.Api(settings);
  table_id = "#" + api.table().node().id;
  url = $(table_id).data('source');
  if (url) {
    return api.ajax.url(url);
  }
});`

# init on turbolinks load
`$(document).on('turbolinks:load', function() {
  if (!$.fn.DataTable.isDataTable("table[id^=dttb-]")) {
    $("table[id^=dttb-]").DataTable();
  }
});`

# turbolinks cache fix
`$(document).on('turbolinks:before-cache', function() {
  var dataTable = $($.fn.dataTable.tables(true)).DataTable();
  if (dataTable !== null) {
    dataTable.clear();
    dataTable.destroy();
    return dataTable = null;
  }
});`
