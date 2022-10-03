rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@github.com:lemon19961007/forest-ui-website.git &&
git push -f -u origin master &&
cd -
echo https://lemon19961007.github.io/forest-ui-website/