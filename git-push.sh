echo "Testing Git Push"
read message
git add .
git commit -m"Testing Git Push"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
else
 git status
 echo "Pushing data to remote server!!!"
 git push -u origin master
fi
