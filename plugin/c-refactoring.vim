"
" Author: Enrique Comba Riepenhausen (@ecomba) & Paul King (@nrocy)
" Email: enrique@edendevelopment.co.uk
" Email: somecrocodile@gmail.com
"
" Acknowledgements:
" Thanks to Gary Bernhardt for the inspiration for this tool and the original
" ExtractVariable() and InlineTemp() functions.
"
" Contributions from Stuart Gale (@bishboria)
"
" Some support functions borrowed from Luc Hermitte's lh-vim library
" Also borrowed snake case function from tim popes vim-abloish plugin

" Load all refactoring recipes
exec 'runtime ' . expand('<sfile>:p:h') . '/refactorings/general/*.vim'

" Commands:
"
" Using a simple 'G' prefix for now
" TODO: Do we even need this prefix? How likely is it that we'll conflict?

command! CAddParameter                  call GAddParameter()
command! CAddParameterNB                call GAddParameterNB()
command! CInlineTemp                    call GInlineTemp()
command! CExtractLet                    call GExtractIntoRspecLet()
command! CConvertPostConditional        call GConvertPostConditional()
command! CIntroduceVariable             call GIntroduceVariable()

command! -range CExtractConstant        call GExtractConstant()
command! -range CExtractLocalVariable   call GExtractLocalVariable()
command! -range CRenameLocalVariable    call GRenameLocalVariable()
command! -range CRenameInstanceVariable call GRenameInstanceVariable()
command! -range CExtractMethod          call GExtractMethod()

" Mappings:
"
" Default mappings are <leader>r followed by an acronym of the pattern's name
" E.g. Extract Method is mapped to <leader>rem

if !exists('g:ruby_refactoring_map_keys')
  let g:ruby_refactoring_map_keys = 1
endif

if g:ruby_refactoring_map_keys
"  nnoremap <leader>gap  :CAddParameter<cr>
"  nnoremap <leader>gapn :CAddParameterNB<cr>
"  nnoremap <leader>git  :CInlineTemp<cr>
"  nnoremap <leader>gel  :CExtractLet<cr>
"  nnoremap <leader>gcpc :CConvertPostConditional<cr>
"  nnoremap <leader>giv  :CIntroduceVariable<cr>
" 
"  vnoremap <leader>gec  :CExtractConstant<cr>
"  vnoremap <leader>gelv :CExtractLocalVariable<cr>
"  vnoremap <leader>grlv :CRenameLocalVariable<cr>
"  vnoremap <leader>griv :CRenameInstanceVariable<cr>
  vnoremap <leader>gem  :CExtractMethod<cr>
endif
