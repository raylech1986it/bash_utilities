rm -Rf .git *

make_commit(){
 echo "$2" >> ./$1
 git add *
 git commit -m "$2"
 sleep 2
}

git init

c=1

p=1; p_file=Production.sh ; p_message="This is production code, line"

f=1; f_file=Feature.sh; f_message="This is feature code, line"

make_commit "$p_file"  "(commit $c) $p_message $p" ; ((p=p+1)) ; ((c=c+1))
make_commit "$p_file"  "(commit $c) $p_message $p" ; ((p=p+1)) ; ((c=c+1))

git checkout -b feature
sleep 2
make_commit "$f_file"  "(commit $c) $f_message $f"; ((f=f+1)) ; ((c=c+1))
make_commit "$f_file"  "(commit $c) $f_message $f"; ((f=f+1)) ; ((c=c+1))

git checkout master
sleep 2
make_commit "$p_file"  "(commit $c) $p_message $p" ; ((p=p+1)) ; ((c=c+1))
make_commit "$p_file"  "(commit $c) $p_message $p" ; ((p=p+1)) ; ((c=c+1))

git checkout feature
sleep 2
make_commit "$f_file"  "(commit $c) $f_message $f" ; ((f=f+1)) ; ((c=c+1))
make_commit "$f_file"  "(commit $c) $f_message $f" ; ((f=f+1)) ; ((c=c+1))

git log --oneline --graph --decorate --all

