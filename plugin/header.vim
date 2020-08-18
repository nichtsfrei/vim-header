" File              : header.vim
" Date              : 18.08.2020
" Last Modified Date: 18.08.2020
" Commands for vim user
" Author Info Headers
command! AddHeader call header#add_header(0, 0, 0)
command! AddMinHeader call header#add_header(1, 0, 0)
" License Headers
command! AddMITLicense call header#add_header(2, 'mit', 0)
command! AddApacheLicense call header#add_header(2, 'apache', 0)
command! AddGNULicense call header#add_header(2, 'gnu', 0)
command! AddAGPLicense call header#add_header(2, 'agpl', 0)
command! AddGreenboneAGPLicense call header#add_header(2, 'agpl_greenbone', 0)
command! AddGreenboneGPLicense call header#add_header(2, 'gpl_greenbone', 0)
command! AddWTFPLLicense call header#add_header(2, 'wtfpl', 0)
command! AddMPLLicense call header#add_header(2, 'mpl', 0)

" Set default global values
if g:header_auto_add_header == 1
    autocmd BufNewFile * call header#add_header(0, 0, 1)
    autocmd BufWritePre * silent! :AddHeader " Update date when saving buffer
endif
