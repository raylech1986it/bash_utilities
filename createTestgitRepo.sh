rm -Rf .git *

make_commit(){
 echo ":)" >> ./script.sh
 git add *
 git commit -m "Commit message"
 sleep 1
}


git init

make_commit
make_commit
make_commit

git branch feature
git checkout feature
sleep 1

make_commit
make_commit

git checkout master
sleep 2

make_commit
make_commit

git log --oneline --graph --decorate --all
