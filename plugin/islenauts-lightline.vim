"
" Name:       islenauts-lightline.vim
" URL:        https://github.com/MakeNowJust/islenauts-lightline.vim
" License:    MIT <https://makenowjust.github.com/license/mit?2015>
" Repository: https://github.com/MakeNowJust/islenauts-lightline.vim
"
"         _
" o      | |
"     ,  | |  _   _  _    __,        _|_  ,
" |  / \_|/  |/  / |/ |  /  |  |   |  |  / \_
" |_/ \/ |__/|__/  |  |_/\_/|_/ \_/|_/|_/ \/
"

" plugin's convention (begin) {{{
if exists('g:loaded_islenauts_lightline')
  finish
endif
let g:loaded_islenauts_lightline = 1

let s:save_cpo = &cpo
set cpo&vim
" }}}

" set color variables {{{
function! s:rgb_to_256(color)
  let l:r = str2nr(a:color[1:2], 16) * 6 / 256
  let l:g = str2nr(a:color[3:4], 16) * 6 / 256
  let l:b = str2nr(a:color[5:6], 16) * 6 / 256

  return l:r * 36 + l:g * 6 + l:b + 16
endfunction

let s:black_gui    = "#162324"
let s:white_gui    = "#EDF2F2"
let s:gray1_gui    = "#B5C9C9"
let s:gray2_gui    = "#839191"
let s:gray3_gui    = "#565959"
let s:gray4_gui    = "#262727"
let s:red_gui      = "#F04341"
let s:green_gui    = "#A4FA87"
let s:yellow_gui   = "#F0E09E"
let s:magenta_gui  = "#F06EE2"
let s:blue_gui     = "#7377FA"
let s:cyan_gui     = "#74E3DA"

let s:black   = [s:black_gui  , s:rgb_to_256(s:black_gui)  ]
let s:white   = [s:white_gui  , s:rgb_to_256(s:white_gui)  ]
let s:gray1   = [s:gray1_gui  , s:rgb_to_256(s:gray1_gui)  ]
let s:gray2   = [s:gray2_gui  , s:rgb_to_256(s:gray2_gui)  ]
let s:gray3   = [s:gray3_gui  , 240                        ]
let s:gray4   = [s:gray4_gui  , 235                        ]
let s:red     = [s:red_gui    , s:rgb_to_256(s:red_gui)    ]
let s:green   = [s:green_gui  , s:rgb_to_256(s:green_gui)  ]
let s:yellow  = [s:yellow_gui , s:rgb_to_256(s:yellow_gui) ]
let s:magenta = [s:magenta_gui, s:rgb_to_256(s:magenta_gui)]
let s:blue    = [s:blue_gui   , s:rgb_to_256(s:blue_gui)   ]
let s:cyan    = [s:cyan_gui   , s:rgb_to_256(s:cyan_gui)   ]
" }}}

" set lightline.vim's palette {{{
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [[s:black, s:blue]    , [s:white, s:gray4]]
let s:p.normal.middle   = [[s:white, s:black]]
let s:p.normal.right    = [[s:black, s:blue]    , [s:white, s:gray4]]
let s:p.inactive.left   = [[s:white, s:gray2]   , [s:white, s:gray4]]
let s:p.inactive.middle = [[s:black, s:black]]
let s:p.inactive.right  = [[s:white, s:gray2]   , [s:white, s:gray4]]
let s:p.insert.left     = [[s:black, s:green]   , [s:green, s:gray4]]
let s:p.insert.right    = [[s:black, s:green]   , [s:white, s:gray4]]
let s:p.replace.left    = [[s:black, s:yellow]  , [s:yellow, s:gray4]]
let s:p.replace.right   = [[s:black, s:yellow]  , [s:white, s:gray4]]
let s:p.visual.left     = [[s:white, s:magenta] , [s:magenta, s:gray4]]
let s:p.visual.right    = [[s:white, s:magenta] , [s:white, s:gray4]]
let s:p.tabline.left    = [[s:white, s:gray2]]
let s:p.tabline.tabsel  = [[s:white, s:gray4]]
let s:p.tabline.middle  = [[s:white, s:gray2]]
let s:p.tabline.right   = [[s:black, s:gray1]]
let s:p.normal.warning  = [[s:white, s:red]]
let s:p.normal.error    = [[s:white, s:red]]
" }}}

" exports palette {{{
let g:lightline#colorscheme#islenauts#palette = lightline#colorscheme#flatten(s:p)
" }}}

" plugin's convention (end) {{{
let &cpo = s:save_cpo
" }}}

" vim: fdm=marker fdc=2 fdl=0
