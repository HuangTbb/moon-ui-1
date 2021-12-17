rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git remote add origin git@gitee.com:huangtobe/moon_ui.git &&
git push -f -u origin master &&
cd -
echo https://huangtobe.gitee.io/moon_ui/index.html