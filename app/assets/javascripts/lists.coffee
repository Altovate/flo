$(document).ready ->
  $('#select-all').on 'click', (e) ->
    check = $(e.target).prop 'checked'
    $('.contact-checkbox').prop 'checked', check
