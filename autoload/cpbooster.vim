function cpbooster#DeleteBufferByPrefix(pref)
  let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && bufname(v:val) =~ "^'.a:pref.'"')
  if (len(buffers) > 0)
    exe 'bd! '.join(buffers, ' ')
  endif
endfunction

function cpbooster#DeleteTerminalBuffers()
  call cpbooster#DeleteBufferByPrefix('!cpbooster')
endfunction

function cpbooster#CpboosterTest(...)
	execute 'w'
  call cpbooster#DeleteTerminalBuffers()
  let totalSize = winwidth(0)
	if a:0 == 0
		execute 'vert botright term cpbooster test "%"'
	else
		execute 'vert botright term cpbooster test "%" -t ' . a:1	
	endif
  execute 'vertical resize ' . (totalSize * 3 / 7) 
  execute 'wincmd w'
endfunction

function cpbooster#CpboosterDebug(...)
	execute 'w'
  call cpbooster#DeleteTerminalBuffers()
  let totalSize = winwidth(0)
	if a:0 == 0
		execute 'vert botright term cpbooster test "%" -d'
	else
		execute 'vert botright term cpbooster test "%" -d -t ' . a:1
	endif
  execute 'vertical resize ' . (totalSize * 3 / 7) 
  execute 'wincmd w'
endfunction

function cpbooster#CpboosterRDebug(...)
	execute 'w'
  call cpbooster#DeleteTerminalBuffers()
  let totalSize = winwidth(0)
	if a:0 == 0
		execute 'vert botright term cpbooster test "%" -d --nc'
	else
		execute 'vert botright term cpbooster test "%" -d --nc -t ' . a:1
	endif
  execute 'vertical resize ' . (totalSize * 3 / 7) 
  execute 'wincmd w'
endfunction

function cpbooster#CpboosterRTest(...)
	execute 'w'
  call cpbooster#DeleteTerminalBuffers()
  let totalSize = winwidth(0)
	if a:0 == 0
		execute 'vert botright term cpbooster test "%" --nc'
	else
		execute 'vert botright term cpbooster test "%" --nc -t ' . a:1	
	endif
  execute 'vertical resize ' . (totalSize * 3 / 7) 
  execute 'wincmd w'
endfunction

function cpbooster#CpboosterAddtc(...)
    execute 'w'
    execute '!cpbooster test "%" -a'
endfunction

function cpbooster#CpboosterCreate(...)
	execute 'w'
	if a:0 == 1
		execute '!cpbooster create ' . a:1
		execute 'e ' . a:1
	else
		echo 'Missing file name'
	endif
endfunction
