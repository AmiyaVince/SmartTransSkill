# SmartTransSkill

**智能英语词汇翻译与深度解析工具** — 基于 Claude Code 的一站式词汇学习助手。

## 快速开始

1. 打开**启动台**（Launchpad）
2. 点击 **SmartTransSkill** 图标（蓝紫色书本标志）
3. Terminal 自动打开并启动 Claude Code + 技能
4. 输入要查询的英文单词即可

## 功能

| 功能 | 说明 |
|------|------|
| 📖 词典释义 | Free Dictionary API + AI 补充，英文释义权威准确 |
| 🏷️ 词性标注 | 完整词性、及物/不及物、可数/不可数、语域标注 |
| 🇨🇳 中文翻译 | 精准义项级中文翻译 |
| 💬 地道例句 | API 优先 + AI 生成，均标注来源 |
| 🔤 形近词辨析 | 拼写相似易混淆词汇的区别说明 |
| 🔄 同义词对比 | 同义词汇的细微差别和适用场景 |
| ↔️ 反义词扩展 | 按义项对应的反义词 |
| 📝 查询历史 | 每次查词自动记录，方便复习 |

## 项目结构

```
SmartTransSkill/
├── CLAUDE.md                       # Claude Code 项目指令
├── README.md                       # 本文件
├── .claude/skills/smart-trans/
│   └── SKILL.md                    # 技能定义（AI 指令）
├── references/
│   ├── pos-tags.md                 # 词性标注规范
│   └── roots-affixes.md            # 常见词根词缀表
├── history/
│   └── query-log.md                # 查询历史记录
└── SmartTransSkill.app/            # macOS 启动器
```

## 使用示例

```
输入: ubiquitous
输出: 📖 词汇、📌 词性释义、💬 例句、🔤 形近词、🔄 同义词、↔️ 反义词

输入: affect vs effect
输出: 两个单词分别解析 + ⚖️ 对比总结表格
```

## 依赖

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
- [Free Dictionary API](https://dictionaryapi.dev/)（在线词典数据源）
- macOS（启动器 .app 为 macOS 专属）

## 许可

仅供个人学习使用。
