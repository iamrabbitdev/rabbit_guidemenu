$(function() {
  window.onload = (e) => {
    window.addEventListener('message', (event) => {
      let item = event.data
      if(item.type == 'ui') {
        if(item.display == true) {
          $('#container').show();
        } else {
          $('#container').hide();
        }
      }
    })

    $('#container').hide();
  }
})