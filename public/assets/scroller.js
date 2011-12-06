var feedo = {
  ready_for_next_post: true,
  display_new_post: function(data) {
    var $top_post = $('.post_container:first');
    var move_top_post = '-' + $top_post.height() + 'px';

    $(data).hide().insertAfter($top_post).fadeIn(1000, function() {
      $top_post.animate({marginTop: move_top_post}, 4000, 'linear', function() {
        $(this).remove();
        feedo.ready_for_next_post = true;
      });
    });

    /* simple fade-out
    $('.posts_container').fadeOut(2000, function() {
      $(this).html(data).fadeIn(2000);
    });
    */
  },
  get_new_post: function() {
    var rotate_post = setInterval(function() {
      if (feedo.ready_for_next_post === false) {
        return;
      } else {
        feedo.ready_for_next_post = false;
        $.ajax({
          url: "/posts/1",
          dataType: 'html',
          success: function(data) {
            feedo.display_new_post(data);
          }
        });
      }
    }, 12000);
  }
};

$(function() {
  feedo.get_new_post();
});