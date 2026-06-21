# 词性标注规范 (Part-of-Speech Tags Reference)

## 主要词性

| 标记 | 英文全称 | 中文名称 | 说明与示例 |
|------|---------|---------|-----------|
| **n.** | noun | 名词 | 人、事物、概念。e.g. _book, happiness, water_ |
| **v.** | verb | 动词 | 动作或状态。e.g. _run, think, exist_ |
| **adj.** | adjective | 形容词 | 修饰名词。e.g. _beautiful, tall, quick_ |
| **adv.** | adverb | 副词 | 修饰动词、形容词或其他副词。e.g. _quickly, very, quite_ |
| **prep.** | preposition | 介词 | 表示关系。e.g. _in, on, at, about_ |
| **conj.** | conjunction | 连词 | 连接词或句子。e.g. _and, but, because_ |
| **pron.** | pronoun | 代词 | 代替名词。e.g. _he, she, it, they_ |
| **det.** | determiner | 限定词 | 限定名词范围。e.g. _the, a, this, my_ |
| **interj.** | interjection | 感叹词 | 表达情感。e.g. _oh!, wow!, ouch!_ |
| **num.** | numeral | 数词 | 表示数量或顺序。e.g. _one, first, hundred_ |

## 动词子类

| 标记 | 说明 | 示例 |
|------|------|------|
| **vt.** | 及物动词 (transitive) | _eat (sth), make (sth)_ |
| **vi.** | 不及物动词 (intransitive) | _sleep, arrive, die_ |
| **aux.** | 助动词 (auxiliary) | _be, do, have, will, can_ |
| **phr. v.** | 短语动词 (phrasal verb) | _give up, look after_ |

## 名词子类

| 标记 | 说明 | 示例 |
|------|------|------|
| **[C]** | 可数名词 (countable) | _a book, two cats_ |
| **[U]** | 不可数名词 (uncountable) | _water, information_ |

## 语域标注（可选）

| 标记 | 说明 |
|------|------|
| _formal_ | 正式用语 |
| _informal_ | 非正式用语 |
| _literary_ | 书面/文学用语 |
| _spoken_ | 口语 |
| _slang_ | 俚语 |
| _technical_ | 专业术语 |
| _archaic_ | 古语/过时用法 |
| _BrE_ | 英式英语 |
| _AmE_ | 美式英语 |

## 使用规范

1. 一个单词有多种词性时，按使用频率从高到低排列
2. 动词优先标注及物/不及物区分（`vt.` / `vi.` 而非泛用 `v.`）
3. 短语和固定搭配使用 `phr. v.` 或直接标注"短语"
4. 语域标注放在词性后，用括号表示：e.g. `adj. (informal)`
