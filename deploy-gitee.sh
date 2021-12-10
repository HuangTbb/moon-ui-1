rm -rf dist &&
yarn build &&
cd dist &&
git init &&
touch README.md &&
git add . &&
git commit -m "update" &&
git remote add origin git@gitee.com:huangtobe/icecream_ui.git &&
git push -f -u origin master &&
cd -
echo https://huangtbb.github.io/icecream-ui/index.html