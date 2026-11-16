# MiniMax H3 官方 Context-IR 语法速查手册 (Context-IR Cheat Sheet)

## 一、图片对齐语法 (Alignment Sentence)
如果提示词输入包含用户提供的参考图，第一行必须包含且仅包含对齐语句：

```text
For the target video, at 0.00 seconds into the target video, <Picture 1> (from [Shot 1]) is fully referenced.
```

- 若有多张图片：
```text
For the target video, at 0.00 seconds into the target video, <Picture 1> (from [Shot 1]) is fully referenced.
For the target video, at 00:03.500 seconds into the target video, <Picture 2> (from [Shot 2]) is fully referenced.
```
- 对齐语句必须以空行结尾。

---

## 二、三大标准输出字段

```text
integrated_multimodal_description:
[镜头分段描述、主体、动作、运镜、台词与音效]

overall_soundscape:
[1-4 句客观物理环境音，无台词，无主观情绪词]

non_diegetic_music:
[1-3 句非画内背景配乐描述，或严格写 N/A]
```

---

## 三、镜头时间戳与规范切镜动词

### 1. 时间戳格式
- `[Shot 1]` 严禁写时间戳（默认从 0.00 开始）。
- `[Shot 2]` 及后续镜头必须写严格递增的时间戳：
  - `[Shot 2] At 00:03.000, the camera cuts to ...`
  - `[Shot 3] At 00:07.500, the shot transitions to ...`

### 2. 规范切镜动词（仅限以下 5 种）
1. `the camera cuts to`
2. `the shot cuts to`
3. `the shot transitions to`
4. `the shot changes to`
5. `the shot switches to`

*注意：禁止使用 dissolve、crossfade、fade 或 wipe。*

---

## 四、角色台词与语法标签

- 角色指定编号：`(S1)`、`(S2)`
- 台词格式：
  `The character (S1) speaks directly to camera: <d>[English] "Exact line here."</d>`
- 跨镜头台词：
  - 前一个镜头末尾加 `<scenetrans>`
  - 后一个镜头开头加 `<scenetrans>`，并注明音频无缝连续（audio continues seamlessly across the cut）。
- 截断台词：使用 `<cutoff>`。
- 旁白画外音：
  `A clear voiceover (S1) speaks: <d>[English] "..."</d>, while the character on screen keeps lips completely closed.`
