lc=$(git log --oneline dev ^master | wc -l)
if [ "$lc" -gt 0 ]; 
then
  echo "Dev branch is ahead of master. Skipping update.";
  exit 0;
else
  git merge master;
  git push --force -u origin dev;
fi
