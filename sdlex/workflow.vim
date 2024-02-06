let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/projects/playground/sdlex
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +4 include/structs.h
badd +28 src/init.c
badd +6 include/init.h
badd +14 makefile
badd +1 include
badd +7 include/common.h
badd +16 src/main.c
badd +6 include/defs.h
badd +1 src
badd +6 src/input.c
badd +3 include/input.h
badd +12 src/draw.c
badd +4 include/draw.h
badd +232 term://~/Desktop/projects/playground/sdlex//40994:/bin/zsh
badd +2 .gitignore
argglobal
%argdel
$argadd src/draw.c
$argadd src/init.c
$argadd src/input.c
$argadd src/main.c
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit include/draw.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 34 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 73 + 54) / 108)
argglobal
if bufexists(fnamemodify("include/draw.h", ":p")) | buffer include/draw.h | else | edit include/draw.h | endif
if &buftype ==# 'terminal'
  silent file include/draw.h
endif
balt src/draw.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 7 - ((6 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 06|
lcd ~/Desktop/projects/playground/sdlex
wincmd w
argglobal
if bufexists(fnamemodify("~/Desktop/projects/playground/sdlex/src/draw.c", ":p")) | buffer ~/Desktop/projects/playground/sdlex/src/draw.c | else | edit ~/Desktop/projects/playground/sdlex/src/draw.c | endif
if &buftype ==# 'terminal'
  silent file ~/Desktop/projects/playground/sdlex/src/draw.c
endif
balt ~/Desktop/projects/playground/sdlex/include/draw.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 12 - ((11 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 0
lcd ~/Desktop/projects/playground/sdlex
wincmd w
exe 'vert 1resize ' . ((&columns * 34 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 73 + 54) / 108)
tabnext
edit ~/Desktop/projects/playground/sdlex/include/init.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 24 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 83 + 54) / 108)
argglobal
2argu
if bufexists(fnamemodify("~/Desktop/projects/playground/sdlex/include/init.h", ":p")) | buffer ~/Desktop/projects/playground/sdlex/include/init.h | else | edit ~/Desktop/projects/playground/sdlex/include/init.h | endif
if &buftype ==# 'terminal'
  silent file ~/Desktop/projects/playground/sdlex/include/init.h
endif
balt ~/Desktop/projects/playground/sdlex/include/structs.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 6 - ((5 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 06|
lcd ~/Desktop/projects/playground/sdlex
wincmd w
argglobal
2argu
balt ~/Desktop/projects/playground/sdlex/include/init.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Desktop/projects/playground/sdlex
wincmd w
exe 'vert 1resize ' . ((&columns * 24 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 83 + 54) / 108)
tabnext
edit ~/Desktop/projects/playground/sdlex/include/input.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 34 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 73 + 54) / 108)
argglobal
3argu
if bufexists(fnamemodify("~/Desktop/projects/playground/sdlex/include/input.h", ":p")) | buffer ~/Desktop/projects/playground/sdlex/include/input.h | else | edit ~/Desktop/projects/playground/sdlex/include/input.h | endif
if &buftype ==# 'terminal'
  silent file ~/Desktop/projects/playground/sdlex/include/input.h
endif
balt ~/Desktop/projects/playground/sdlex/src/input.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
lcd ~/Desktop/projects/playground/sdlex
wincmd w
argglobal
3argu
balt ~/Desktop/projects/playground/sdlex/include/input.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Desktop/projects/playground/sdlex
wincmd w
exe 'vert 1resize ' . ((&columns * 34 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 73 + 54) / 108)
tabnext
edit ~/Desktop/projects/playground/sdlex/src/main.c
argglobal
4argu
balt ~/Desktop/projects/playground/sdlex/src/input.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Desktop/projects/playground/sdlex
tabnext
edit ~/Desktop/projects/playground/sdlex/include/common.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 36 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 35 + 54) / 108)
exe 'vert 3resize ' . ((&columns * 35 + 54) / 108)
argglobal
1argu
if bufexists(fnamemodify("~/Desktop/projects/playground/sdlex/include/common.h", ":p")) | buffer ~/Desktop/projects/playground/sdlex/include/common.h | else | edit ~/Desktop/projects/playground/sdlex/include/common.h | endif
if &buftype ==# 'terminal'
  silent file ~/Desktop/projects/playground/sdlex/include/common.h
endif
balt ~/Desktop/projects/playground/sdlex/include/defs.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 7 - ((6 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 026|
lcd ~/Desktop/projects/playground/sdlex
wincmd w
argglobal
1argu
if bufexists(fnamemodify("~/Desktop/projects/playground/sdlex/include/defs.h", ":p")) | buffer ~/Desktop/projects/playground/sdlex/include/defs.h | else | edit ~/Desktop/projects/playground/sdlex/include/defs.h | endif
if &buftype ==# 'terminal'
  silent file ~/Desktop/projects/playground/sdlex/include/defs.h
endif
balt ~/Desktop/projects/playground/sdlex/include/common.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 7 - ((6 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 02|
lcd ~/Desktop/projects/playground/sdlex
wincmd w
argglobal
1argu
if bufexists(fnamemodify("~/Desktop/projects/playground/sdlex/include/structs.h", ":p")) | buffer ~/Desktop/projects/playground/sdlex/include/structs.h | else | edit ~/Desktop/projects/playground/sdlex/include/structs.h | endif
if &buftype ==# 'terminal'
  silent file ~/Desktop/projects/playground/sdlex/include/structs.h
endif
balt ~/Desktop/projects/playground/sdlex/include/defs.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 4 - ((3 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 0
lcd ~/Desktop/projects/playground/sdlex
wincmd w
exe 'vert 1resize ' . ((&columns * 36 + 54) / 108)
exe 'vert 2resize ' . ((&columns * 35 + 54) / 108)
exe 'vert 3resize ' . ((&columns * 35 + 54) / 108)
tabnext
argglobal
if bufexists(fnamemodify("term://~/Desktop/projects/playground/sdlex//40994:/bin/zsh", ":p")) | buffer term://~/Desktop/projects/playground/sdlex//40994:/bin/zsh | else | edit term://~/Desktop/projects/playground/sdlex//40994:/bin/zsh | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/projects/playground/sdlex//40994:/bin/zsh
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 24 - ((23 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 0
lcd ~/Desktop/projects/playground/sdlex
tabnext 3
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
