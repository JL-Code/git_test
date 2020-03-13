# 拉取仓库代码,并初始 git flow
git clone https://github.com/JL-Code/git_test.git
git flow init -d
git branch
# 创建release分支
git flow release start v1.0.0.test
# 可能的修改版本号
# 开始 release 分支
git flow release finish v1.0.0.test -m 'release 消息'
# 输入 release 信息

# 推送本地所有分支
git push origin --all
