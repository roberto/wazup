$ ->
  $("a[data-remote]", ".projects-list").on "ajax:success", (e, data, status, xhr) ->
    $(this).siblings().removeClass('active')
    $(this).addClass('active')
