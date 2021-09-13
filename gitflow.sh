# 拉取仓库代码,并初始 git flow
git clone https://github.com/JL-Code/git_test.git
git flow init -d
echo '当前分支信息👇'
git branch -av
# 创建release分支
git flow release start v1.0.0.test
# 开始 release 分支
git flow release finish -m 'release 消息' v1.0.0.test
# 推送本地所有分支
git push origin --all
echo '所有分支信息👇'
git branch -av
