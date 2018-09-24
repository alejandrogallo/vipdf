
"let g:pdf_path = ''

set nolist

let g:current_page = 0

function! RenderPage(page)
  exec '%!pdftotext -f '.a:page.' -l '.a:page.' '.g:pdf_path.' -'
endfunction

function! RenderNextPage()
  let g:current_page += 1
  call RenderPage(g:current_page)
endfunction

function! RenderPrevPage()
  let g:current_page -= 1
  call RenderPage(g:current_page)
endfunction

nnoremap k :call RenderPrevPage()<cr>
nnoremap j :call RenderNextPage()<cr>
