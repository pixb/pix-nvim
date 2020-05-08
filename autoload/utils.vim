function! utils#source_file(root_path,path,...)
    " 加载用户的配置文件
    let user_global = get(a:000, 0, ! has('vim_starting'))
    let abspath = resolve(a:root_path . '/' . a:path)
    " 加载配置文件
    if ! user_global
        execute 'source' fnameescape(abspath)
        return 
    endif
endfunction
