function hexsearch#search(pattern, forward)
    if a:pattern !~ '\v^(\x{2}|\.)*$'
        throw "Bad pattern, must consist of pairs of hexadecimal digits, or dots"
    endif

    if &fenc != 'latin1' || !&bin || &ff != 'unix'
        if inputlist(['OK to reload with latin1 encoding, binary mode and unix line terminators?', '1. OK', '2. No']) != 1
            throw "Please reload file in latin1 encoding, binary mode and unix line terminators: :e ++bin ++enc=latin1 ++ff=unix"
        endif
        e! ++bin ++enc=latin1 ++ff=unix
    endif

    let search_pattern = '\C\v'
    let search_pattern .= substitute(a:pattern, '\x\{2}', '\=submatch(0) ==? "0a" ? "\\n" : submatch(0) ==? "00" ? "%x0a" : "%x".submatch(0)', 'g')
    let search_pattern .= substitute(a:pattern, '\.', '\\_.', 'g')
    let @/ = search_pattern
    let v:searchforward = a:forward == '!' ? 0 : 1
    normal n
endfunction
