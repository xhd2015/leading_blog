
#doall=add * ; commit m=$MSG ; push ;
.PHONY:doall add commit push andcommit

doall:add commit push

add:
	@git add * 
	@git add .[!.]*

commit: 
	@git commit -m "${m}"
push:
	@git push origin master:master

andcommit: add commit
