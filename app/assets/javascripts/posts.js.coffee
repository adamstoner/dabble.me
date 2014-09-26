$ ->

  # to set summernote object
  # You should change '#post_content' to your textarea input id
  summer_note = $('#entry_body')

  # to call summernote editor
  summer_note.summernote
    height:300
    lang: 'en-US'
    toolbar: [
                ["fontsize", ["fontsize"]],
                ["style", ["bold", "italic", "underline", "clear"]],
                ["layout", ["ul", "ol"]],
                ['insert', ['link']],
                ['misc', ['fullscreen','codeview']],
             ]

  # to set code for summernote
  summer_note.code summer_note.val()

  # to get code for summernote
  summer_note.closest('form').submit ->
    # alert $('#post_content').code()
    summer_note.val summer_note.code()
    true