command! Pretty :%s/></>\r</g | filetype indent on | setf xml | normal gg=G<Paste>
command! PrettyFast :%s/></>\r</g
