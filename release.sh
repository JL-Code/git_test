# 1. release prepare
# 1.1. 基于 release/xxx 分支，确保当前分支代码是最新;
# 1.2. 修改代码中版本号并提交到 release
# 2. release start
# 2.1. 将 release  merge 到 master（风险1：可能出现分支合并冲突）
# 2.2. 将 release  merge 到 develop（风险2：可能出现分支合并冲突）
# 2.3. 将变更推送到远程
# 3. 打版本标签
# 3.1 推送到远程
# 4. release finished

SHELL_DIR=$(dirname "$0")
CURRENT_USER=$(who)
echo "脚本执行目录：$SHELL_DIR"
echo "谁在执行脚本：$CURRENT_USER"
echo "参数1：${1-无}"

# 参数：branch、tag
function git_release() {
  echo "所有的参数："$@
  echo "当前所在分支："$(git status)
  echo "切换到分支："$1
  echo "TAG："$2
  git checkout $1
  git status
}


git_release 'release/1.0.0-release' 'v1.0.0.001'