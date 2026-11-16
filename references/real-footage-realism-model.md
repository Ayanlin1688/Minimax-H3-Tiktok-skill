# 真实素材正向模型（Real Footage Realism Model）
## 从"反缺陷清单"升级为"正向生成真实感"

---

## 一、为什么必须换思路（本轮架构诊断）

前四轮我们做的事是：**看到一条翻车，加一条禁令**。
- 第三只手 → 加只手守恒
- 产品悬空 → 加接触锁
- 脸被染红 → 加异色隔离
- 屏显乱码 → 加不可读规则

这条路走不完。因为它是**黑名单思维**：只能挡住"已经见过的错"，挡不住"还没见过的错"。

**真正的差距不在"有缺陷"，而在"太干净"。**

人类看视频判断"这是不是实拍"，用的不是"有没有第三只手"，而是一组**正向特征**：
> 有噪点吗？白平衡统一吗？高光有溢出吗？桌上有无关杂物吗？说话有卡壳吗？手会打滑吗？镜头会 breathe 吗？

AI 生成的画面**太整齐、太规整、太完美**——即使没有任何解剖错误，也会被判定为"假"。

所以底层要做的是：**给 H3 一个"真实素材的正向画像"，让它照着这个画像生成**，而不是只告诉它别犯什么错。

---

## 二、真实素材七层正向模型

### 第 1 层：传感器层（Sensor Physics）
**真实手机拍摄必然带这些物理痕迹，AI 默认全部缺失：**

```
The footage carries a faint even grain from the phone sensor in the darker areas. One or two areas clip to pure white where the COB strip hits the metal. The white balance is slightly warm on the side facing the open door and slightly cool on the ceiling-tube side, because the two light sources do not match. A few frames show a light motion blur on the fastest moving hand.
```

| 必须写进提示词的物理痕迹 | 为什么 |
|---|---|
| 暗部轻微均匀噪点 | AI 画面默认"无噪点"= 数码渲染感 |
| 强光处高光溢出（clip to white） | 真实手机永远压不住高光 |
| 白平衡两侧不一致（暖/冷） | 多光源必然色温不统一 |
| 快速动作轻微运动模糊 | 24fps 快门必然拖影 |
| 焦点轻微 hunt 一次 | 手机自动对焦会犹豫 |

### 第 2 层：机身层（Camera Body Physics）
**真实 UGC 是"一个人单手举着手机"，不是三脚架也不是云台：**

```
One person holds the phone in one hand for the whole clip. The frame drifts a centimetre or two as the arm tires, then re-centres once. When he reaches for the product the phone dips slightly with his shoulder. The phone never glides and never locks off.
```

- ✅ `the frame drifts slightly as the arm tires and re-centres once`
- ✅ `the phone dips a little when he shifts his weight`
- ❌ `smooth dolly` / `gimbal glide` / `locked-off tripod` / `cinematic rack focus`

### 第 3 层：场景层（Environment Clutter Floor）
**真实环境的"杂乱底线"——AI 会主动把场景收拾干净，这是重大破绽：**

```
Behind him the workbench holds a jumble of unrelated items: a half-open toolbox with three loose sockets spilling out, a stained paper coffee cup, a coil of black air hose, a stack of old receipts held down by a bolt, a shop rag draped over the vice, and a radio with its antenna bent. None of these objects move during the shot.
```

**规则**：每个场景必须列出 **5–8 件与产品完全无关的杂物**，并声明它们全程不动。
> 这一条对"像实拍"的贡献，比任何解剖规则都大。

### 第 4 层：表面层（Surface Imperfection Floor）
**产品与环境必须带"使用痕迹"，全新无瑕 = 假：**

```
The product's black plastic carries a fine layer of shop dust and two faint fingerprints near the grip. The red grips show a slightly worn sheen where thumbs land. The hood's metal edge has chipped paint and old scratches. The workbench surface has burn marks and a dried ring from a cup.
```

| 必写痕迹 | 位置 |
|---|---|
| 细灰尘层 | 产品外壳 |
| 2 处轻微指纹 | 握把 / 按键附近 |
| 拇指落点的微磨损亮面 | 握把 |
| 漆面崩口 / 旧划痕 | 环境金属件 |
| 干涸水渍圈 / 烫痕 | 桌面 |

### 第 5 层：人物层（Human Asymmetry）
**真实的脸是不对称的，AI 默认画对称脸 = 蜡像：**

```
His face is slightly asymmetric: the left brow sits a little higher than the right, one eye opens marginally wider than the other, and the corner of his mouth on the left pulls down more when he talks. There is a small patch of grey in the beard near the chin that the rest does not have.
```

**新增对称性破坏项**（在铁律 M 五锚点之上追加）：
- 左右眉高不同
- 两眼开合度略不同
- 说话时嘴角单侧下拉更多
- 胡须中有局部颜色不均

### 第 6 层：说话层（Speech Imperfection）—— 带货视频最被忽视的一层
**这是"假"的头号来源。当前规则写出的是"广告配音稿"，真人不会那样说话：**

真实口播必然包含：
| 特征 | 英文写法 |
|---|---|
| 起句卡壳后重来 | `He starts, stops, breathes in, then restarts:` |
| 填充词 | `uh` / `so` / `okay so` / `I mean` |
| 自我更正 | `— actually, no, it's more like` |
| 句中换气 | `(he takes a short breath here)` |
| 音量不均 | `the first words come out louder, then drop` |
| 句尾衰减 | `the last word trails off` |
| 边说边想 | `he glances down at the product, then finishes the thought` |

**示例（可直接改用）：**
```
He begins, stops himself, takes a short breath, and restarts. The first two words come out a little too loud, then his volume drops. Halfway through he glances down at the bar, as if checking, then finishes the thought. His last word trails off.
<d>[English] "So this — okay, so this thing, uh, it actually just stuck there. Like it didn't even need..."</d>
```

> **注意**：台词的"不完美"是靠**描述段**实现的，`<d>` 标签里仍然放准确的词。这样口型对得上，语气却是真的。

### 第 7 层：动作层（Action Imperfection）
**真人的手会打滑、会重新抓、会调整：**

```
He grips the bar, it slips a fraction in his palm, he re-seats his fingers and continues without comment. Later, when he presses the button, his thumb misses the first time and he shifts it before pressing again.
```

- ✅ `it slips a fraction in his palm, he re-seats his fingers`
- ✅ `his thumb misses the first time and he shifts it`
- ❌ `he presses the button smoothly`（机器人动作）

---

## 三、由七层模型派生的六条新铁律

### 铁律 R：去干净化底线（Anti-Clean Floor）★最重要
**每一条提示词必须包含以下 5 项中的至少 4 项**：
1. **传感器噪点**：`a faint even grain from the phone sensor in the darker areas`
2. **高光溢出**：`one area clips to pure white where the light hits the metal`
3. **白平衡不统一**：`slightly warm on one side and slightly cool on the other because the two light sources differ`
4. **表面使用痕迹**：`a fine layer of dust, two faint fingerprints near the grip, worn sheen where thumbs land`
5. **场景杂物**：`5–8 件与产品无关的杂物，并声明全程不动`

> **没有这一条，前面 17 条铁律全做对，画面依然"一眼AI"。**

### 铁律 S：单机位少切镜（One Operator, Few Cuts）
- 15 秒内**最多 2–3 个镜头**（真实 UGC 通常 1–3 个连续镜，不是 4 个设计镜）
- 每个镜头必须有**机身微动**：`the frame drifts a centimetre as the arm tires and re-centres once`
- 禁止：`smooth dolly` / `gimbal` / `locked-off tripod` / `cinematic rack focus` / `aerial`
- 允许并鼓励**镜内重新构图**：`he tilts the phone down slightly to bring the button into frame`

### 铁律 T：说不完美的话（Imperfect Speech）★第二重要
每个说话镜头必须写**至少 2 项**语言不完美：
- 起句卡壳后重来 / 填充词 / 自我更正 / 句中换气 / 音量不均 / 句尾衰减 / 边说边看产品
- `<d>` 里的词仍然准确，不完美由**描述段**承担
- 禁止"广告播音腔"：整段匀速、每句等长、句尾上扬

### 铁律 U：动作不完美（Imperfect Action）
每个操作镜头必须写**1 处微失误**：
- 打滑后重抓 / 拇指第一下没按到 / 角度没对齐再调一次 / 手抖一下后稳住

### 铁律 V：场景杂乱底线（Clutter Floor）
每个场景必须写 **5–8 件无关杂物**，并声明 `none of these objects move during the shot`。

### 铁律 W：生活切片而非广告脚本（Slice-of-Life, Not Ad Script）
- 真实带货视频是 **1–2 个生活切片**，不是"钩子/展开/证明/号召"四段式广告
- **取消显式 CTA 镜头**：真人不会对着镜头说"点下方小黄车"
- 视频应**在动作中间结束**，而不是在摆拍定格中结束
- 人物是"**边做事边随口说给拍他的人听**"，不是"对着观众做主播"

---

## 四、七层模型 × 品类适配（如何做到全类目通用）

七层模型与品类**完全解耦**——无论卖什么，这七层都不变。品类只影响两处：

| 层 | 是否随品类变化 | 说明 |
|---|---|---|
| 1 传感器层 | ❌ 不变 | 任何场景都一样 |
| 2 机身层 | ❌ 不变 | 单手举机 |
| 3 场景层 | ⚠️ 换物件 | 车库/厨房/卧室/办公桌，换杂物清单 |
| 4 表面层 | ⚠️ 换载体 | 产品材质不同，痕迹位置不同 |
| 5 人物层 | ⚠️ 换人 | 年龄性别不同，锚点写法一致 |
| 6 说话层 | ⚠️ 换口音 | 方言不同，不完美结构一致 |
| 7 动作层 | ⚠️ 换动作 | T/C 档位不同，微失误写法一致 |

> **所以"全类目通用模板"= 固定七层脚手架 + 6 个填空槽（场景物件 / 产品结构 / 人物 / 口音 / 交互动词 / 台词）。**

---

## 五、验收：真实感六问（产物必须全部通过）

| # | 问题 | 不合格表现 |
|---|---|---|
| 1 | 画面有噪点 / 高光溢出 / 白平衡不均吗？ | 干净得像渲染图 |
| 2 | 机身有手臂疲劳微动吗？ | 像三脚架 |
| 3 | 场景有 5 件以上无关杂物吗？ | 桌面干净得像样机图 |
| 4 | 产品有灰尘 / 指纹 / 磨损吗？ | 产品全新无瑕 |
| 5 | 说话有卡壳 / 换气 / 音量不均吗？ | 像广告配音 |
| 6 | 手有打滑 / 没按到 / 重抓吗？ | 动作像机械臂 |

**六问全过 = 看起来像实拍。任何一问不过，就算没有解剖错误，也会被判定为假。**
