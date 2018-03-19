# C Refactoring Tool for Vim

I love vim! It's my editor of choice when I am developing software.

I took [https://github.com/ecomba/vim-ruby-refactoring](vim-ruby-refactoring) and am hacking away at in

So now I have decided to code this in vim script, but I am not sure how far
I will go with it (clone at your own risk).

   N.B. 'Rename Local Variable', 'Rename Instance Variable' and 'ExtractMethod' require matchit.vim:

[http://www.vim.org/scripts/script.php?script_id=39](http://relishapp.com/despo/vim-ruby-refactoring)
   
## Implemented commands/patterns:
   
    ~~:GAddParameter           - Add Parameter ~~
    ~~:GInlineTemp             - Inline Temp~~
    ~~:GConvertPostConditional - Convert Post Conditional~~
    ~~:GExtractConstant        - Extract Constant          (visual selection)~~
    ~~:GExtractLet             - Extract to Let (Rspec)~~
    ~~:GExtractLocalVariable   - Extract Local Variable    (visual selection)~~
    ~~:GRenameLocalVariable    - Rename Local Variable     (visual selection/variable under the cursor, *REQUIRES matchit.vim*)~~
    ~~:GRenameInstanceVariable - Rename Instance Variable  (visual selection, *REQUIRES matchit.vim*)~~
    :GExtractMethod          - Extract Method            (visual selection, *REQUIRES matchit.vim*)

## Default bindings:

    ~~:nnoremap <leader>gap  :GAddParameter<cr>~~
    ~~:nnoremap <leader>gcpc :GConvertPostConditional<cr>~~
    ~~:nnoremap <leader>gel  :GExtractLet<cr>~~
    ~~:vnoremap <leader>gec  :GExtractConstant<cr>~~
    ~~:vnoremap <leader>gelv :GExtractLocalVariable<cr>~~
    ~~:nnoremap <leader>git  :GInlineTemp<cr>~~
    ~~:vnoremap <leader>grlv :GRenameLocalVariable<cr>~~
    ~~:vnoremap <leader>griv :GRenameInstanceVariable<cr>~~
    :vnoremap <leader>gem  :GExtractMethod<cr>

Additional usage examples (thanks Justin!):
~~[http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-series/](http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-series/)~~

## Documentation
~~[http://relishapp.com/despo/vim-ruby-refactoring](http://relishapp.com/despo/vim-ruby-refactoring)~~

Enrique Comba Riepenhausen & Paul King

