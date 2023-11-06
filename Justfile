set shell := ['nu', '-m', 'light', '-c']

# The export setting causes all just variables
# to be exported as environment variables.

set export := true

JUST_FILE_PATH := justfile()

# Just commands aliases
# alias d := dev
# alias b := build

# 默认显示所有可用命令
default:
  @just --list --list-prefix "··· "

# Install all dependencies
i:
  pnpm install

# Build docs locally
b:
  pnpm run build

# Start server in dev mode
d:
  pnpm run dev

# Preview docs locally
p:
  pnpm run preview

# Format docs
fmt:
  prettier --write .

# 扫描代码中的拼写错误, 需要本机安装 `typos-cli`, 使用：`just typos` or `just typos raw`
typos output=('table'):
  @nu tools/typos.nu {{output}}

# 检查过期 Node Modules 依赖, 需要全局安装 `npm-check-updates`
outdated:
  ncu

