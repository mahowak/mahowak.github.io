sudo jekyll build
git add -f *
git commit -m "updated site"
git push
#scp -r _site/* kylemaho@athena.dialup.mit.edu:~/www/.
