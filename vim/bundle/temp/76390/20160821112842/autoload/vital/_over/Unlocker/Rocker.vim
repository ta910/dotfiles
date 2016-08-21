scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


function! s:_vital_loaded(V)
	let s:V = a:V
	let s:Holder = a:V.import("Unlocker.Holder")
	let s:Multi = a:V.import("Unlocker.Rocker.Multi")
	let s:HolderBase = a:V.import("Unlocker.Rocker.HolderBase")
endfunction


function! s:_vital_depends()
	return [
\		"Unlocker.Rocker.HolderBase",
\		"Unlocker.Rocker.Multi",
\		"Unlocker.Holder",
\	]
endfunction



function! s:is_locker(obj)
	return type(a:obj) == type({})
\		&& type(get(a:obj, "lock", "")) == type(function("tr"))
\		&& type(get(a:obj, "unlock", "")) == type(function("tr"))
endfunction


function! s:as_locker_by_holder(obj)
	return s:HolderBase.make(s:Holder.as_get_deepcopy(a:obj))
endfunction


function! s:as_locker(obj)
	return s:is_locker(a:obj) ? a:obj : s:as_locker_by_holder(a:obj)
endfunction


function! s:any_by_holder(...)
	let any = s:Holder.get("Any")
	return s:as_locker_by_holder(call(any.make, a:000, any))
endfunction


function! s:any(obj)
	return s:is_locker(a:obj) ? a:obj : s:any_by_holder(a:obj)
endfunction


function! s:lock(...)
	return s:Multi.make(map(copy(a:000), "s:any(v:val)")).lock()
endfunction


function! s:get(holdername)
	let holder = s:Holder.get(a:holdername)
	return s:as_locker_by_holder(call(holder.make, a:000, holder))
endfunction


let s:holders = [
\	"Value",
\	"Variable",
\	"Option",
\	"File",
\]


for s:name in s:holders
	execute join([
\	"function! s:" . tolower(s:name) . "(...)",
\	"	let holder = s:Holder.get('". s:name . "')",
\	"	return s:as_locker_by_holder(call(holder.make, a:000, holder))",
\	"endfunction",
\	], "\n")
endfor


" function! s:value(value)
" 	return s:as_locker_by_holder(s:Holder.value(a:value))
" endfunction
"
"
" function! s:variable(value)
" 	return s:as_locker_by_holder(s:Holder.variable(a:value))
" endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
