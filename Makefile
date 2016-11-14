
#doall=add * ; commit m=$MSG ; push ;
.PHONY:doall add commit push andcommit help blog ls

help:
	@echo "newblog title=?"
	@echo "commit m=?"
	
doall:add commit push

add:
	@git add * 
	@git add .[!.]*

commit: 
	@git commit -m "${m}"
push:
	@git push origin master:master

andcommit: add commit

.ONESHELL:
blog:
	@source ./Makefile.rc
	@mkblogdirAndCd ${title}
.ONESHELL:
ls:
	@source ./Makefile.rc
	@lsblogDir
