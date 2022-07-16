rm -Rf .git *

git init
echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2


echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2

echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2

git branch dev2
sleep 1
git checkout dev2
sleep 2
echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2

echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2

git checkout master
echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2


echo ":)" >> ./script.sh
git add *
git commit -m "Commit message"
sleep 2


git log --oneline --graph --decorate --all

