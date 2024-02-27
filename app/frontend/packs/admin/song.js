$(document).ready(function() {
  $('#search_singers').on('keyup', function() {
    var searchText = $(this).val().toLowerCase();
    $('.checkbox-singer-group').each(function() {
      var singerName = $(this).data('singer-name');
      if (singerName && singerName.indexOf(searchText) !== -1) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });

  $('#search_authors').on('keyup', function() {
    var searchText = $(this).val().toLowerCase();
    $('.checkbox-author-group').each(function() {
      var authorName = $(this).data('author-name');
      if (authorName && authorName.indexOf(searchText) !== -1) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
});