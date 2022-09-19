if !exists('s:M')
    let s:M = {}

    let s:M.foldExprList = ["syntax","treesitter","marker","diff","indent","expr","manual",]

    let b:tempstr = execute("silent set foldexpr?")
    let b:ts2 = strtrans(b:tempstr)
    let b:matchPos = matchend(b:ts2,'foldexpr=')

    " echom b:ts2
    let s:M._backFoldGlob = strcharpart(b:ts2,b:matchPos)
    " echom s:M._backFoldGlob

    function s:M.fzfSetFoldMethod(foldExpr)
        let l:selectedExpr=a:foldExpr 

        if l:selectedExpr == "treesitter"
            set foldmethod=expr
            set foldexpr=nvim_treesitter#foldexpr()
        elseif l:selectedExpr == "expr"
            set foldmethod=expr
            exe 'set foldexpr='.g:_fzfextendExport._backFoldGlob
        else 
            exe 'set fdm='.l:selectedExpr
        endif
        echom 'foldmethod:'.l:selectedExpr.' is set'
    endfunction

    let _fzfextendExport = s:M

    " call 
    nnoremap <silent> <leader>zm :call fzf#run(fzf#wrap({'source':_fzfextendExport.foldExprList,'sink':funcref('_fzfextendExport.fzfSetFoldMethod')}))<CR>

endif

