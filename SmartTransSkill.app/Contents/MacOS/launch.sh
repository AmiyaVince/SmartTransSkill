#!/bin/bash
# ============================================================
# SmartTransSkill Launcher
# 双击 .app 即可在 SmartTransSkill 项目目录中启动 Claude Code
# ============================================================

# -----------------------------------------------------------
# 0. 自动检测路径（不再硬编码，项目移动也不会失效）
# -----------------------------------------------------------
# 脚本位于: SmartTransSkill.app/Contents/MacOS/launch.sh
# 向上 3 级到 .app，再向上 1 级到项目根
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
PROJECT_DIR="$(cd "$APP_DIR/.." && pwd)"

# 动态查找 claude（先 which，再查常见路径）
CLAUDE_PATH="$(which claude 2>/dev/null)"
if [ -z "$CLAUDE_PATH" ]; then
    for candidate in \
        "$HOME/.npm-global/bin/claude" \
        "/usr/local/bin/claude" \
        "/opt/homebrew/bin/claude"; do
        if [ -x "$candidate" ]; then
            CLAUDE_PATH="$candidate"
            break
        fi
    done
fi

# -----------------------------------------------------------
# 1. 基本检查
# -----------------------------------------------------------
if [ ! -d "$PROJECT_DIR" ]; then
    osascript -e "display dialog \"项目目录不存在：\n$PROJECT_DIR\n\n请检查 .app 是否位于项目根目录内。\" buttons {\"确定\"} default button 1 with icon stop"
    exit 1
fi

if [ -z "$CLAUDE_PATH" ] || [ ! -x "$CLAUDE_PATH" ]; then
    osascript -e "display dialog \"未找到 Claude Code。\n\n请确保 claude 命令行工具已安装（npm install -g @anthropic-ai/claude-code）。\" buttons {\"确定\"} default button 1 with icon stop"
    exit 1
fi

# -----------------------------------------------------------
# 2. 在新 Terminal 窗口中启动 Claude Code
# -----------------------------------------------------------
osascript <<EOF
tell application "Terminal"
    activate
    do script "export PATH=\"\$HOME/.npm-global/bin:\$PATH\"; cd '$PROJECT_DIR' && exec '$CLAUDE_PATH' '/smart-trans'"
end tell
EOF

exit 0
