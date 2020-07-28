function cpbooster#CpboosterTest(...)
	execute 'w'
	if a:0 == 0
		execute '!cpbooster test "%"'
	else
		execute '!cpbooster test "%" -t ' . a:1	
	endif
endfunction

function cpbooster#CpboosterDebug(...)
	execute 'w'
	if a:0 == 0
		execute '!cpbooster test "%" -d'
	else
		execute '!cpbooster test "%" -d -t ' . a:1
	endif
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

function cpbooster#CpboosterRDebug(...)
	execute 'w'
	if a:0 == 0
		execute '!cpbooster test "%" -d --nc'
	else
		execute '!cpbooster test "%" -d --nc -t ' . a:1
	endif
endfunction

function cpbooster#CpboosterRTest(...)
	execute 'w'
	if a:0 == 0
		execute '!cpbooster test "%" --nc'
	else
		execute '!cpbooster test "%" --nc -t ' . a:1	
	endif
endfunction

function cpbooster#CpboosterAddtc(...)
    execute 'w'
    execute '!cpbooster test "%" -a'
endfunction

