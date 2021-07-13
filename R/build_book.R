# render book
book <- bookdown::render_book("textbook/")
# move in the right place when book is rendered
if (fs::dir_exists("docs/textbook")) {
  fs::dir_delete("docs/textbook")
  fs::file_move("textbook/docs/textbook","docs")
}

