command! Pretty :%s/></>\r</g | filetype indent on | setf xml | normal gg=G<Paste>
command! PrettyFast :%s/></>\r</g
command! -nargs=1 Count :%s/<args>/&/gn
