# SmartTransSkill

本项目是一个基于 Claude Code 的智能英语词汇翻译与深度解析工具。

## 启动行为

当此项目启动时，立即使用 Skill 工具调用 `/smart-trans` 技能，然后向用户打招呼并询问要查询哪个英语单词。

## 项目文件结构

- `.claude/skills/smart-trans/SKILL.md` — 技能定义文件
- `references/pos-tags.md` — 词性标注规范参考
- `references/roots-affixes.md` — 常见词根词缀参考
- `history/query-log.md` — 查询历史记录（每次查词后自动追加）
- `SmartTransSkill.app/` — macOS 启动器应用（双击启动台图标即可使用）

## 技能核心能力

1. 在线词典 API 查询（Free Dictionary API）
2. 词性标注 + 英文释义 + 精准中文翻译
3. 地道例句（API 优先，模型补充）
4. 形近词辨析
5. 同义词对比（含细微差别说明）
6. 反义词扩展
7. 📊 历史统计（输入"统计"查看词汇学习数据）

## 查询历史

所有查询自动记录到 `history/query-log.md`，格式为：
| 日期 | 单词 | 中文意思 |

## 使用提示

- 用户输入单个英文单词 → 完整 7 维度解析
- 用户输入短语 → 按短语整体解析
- 用户输入"word1 vs word2" → 对比分析模式
- 用户输入"统计" → 📊 查看词汇学习统计
- 用户输入中文 → 提示本技能专注英→中方向
