---
name: minimax-h3-tiktok-ecommerce
description: "MiniMax H3 (Hailuo 02) 美区 TikTok Shop 全类目通用实拍带货提示词 Skill（2026年11月 · 七层真实感模型 + 27 条铁律 A–AA + 36 项自检）。架构从『反缺陷黑名单』升级为『真实素材正向模型』，并用五轮真实翻车视频逐帧闭环验证修正。27 条铁律：A 正向段零否定词、B 只手任务守恒、C 屏幕坐标+物体锚点、D T1–T5 形态档位、E 产品结构锁、F 单实例锁+连续态锁、G 原生手机直出光影、H 表情去夸张+口型守恒、I 接触面锁定、J 手—物耦合、K 单动作单运镜、L 悬挂物微动、M 去蜡人化（A–F 随机人物池、痣为可选项且位置随机、禁固定左颊痣、必写美国蓝领共性）、N 异色污染隔离、O 展态锁定、P 小屏显不可读、Q 构图边界与穿模防护、R 去干净化底线（噪点/高光溢出/白平衡/灰尘指纹/5–8 件杂物）、S 单机位少切镜、T 说不完美的话（卡壳/换气/音量不均/句尾衰减）、U 动作不完美、V 场景杂乱底线、W 生活切片而非广告脚本、X 文字分层（与官方保留原文字对齐）、Y 穿模防护（写清手指在产品前还是后、透明瓶壁完整挡在手指前）、Z 前三秒钩子（动作已进行一半+可见阻力+产品第 1 秒入画）、AA 人物有事可干（禁空手比划与举胸前对镜头）。含 T/C/S 三步路由、C1–C8 品类语法、S1–S8 特殊监管品类合规、全类目通用主模板（固定脚手架+6 槽）、8 大爆款剧本库、Apple iPhone 17 Pro Max 焦段体系。"
---

# MiniMax H3 美区 TikTok Shop 全类目通用实拍带货提示词 Skill
## （2026年11月 · 七层真实感模型 + 23 条铁律 · 全类目通用版）

本 Skill 经**四轮真实翻车视频逐帧病理闭环验证**（第三只手 → 产品悬空 → 幻影分身 → 红脸污染）逐步建成。

**架构结论（重要）**：前四轮做的是"**反缺陷黑名单**"——看到一条翻车加一条禁令。这条路走不完，因为只能挡住已见过的错。
真正的差距不在"有缺陷"，而在"**太干净**"。所以本版把底层升级为"**真实素材正向模型**"：

> **先把画面做"脏"、做"乱"、做"不完美"，再用 23 条铁律封堵结构与解剖错误。**

详见 `references/real-footage-realism-model.md`（七层正向模型）与 `universal-master-template.txt`（全类目通用主模板）。

---

## 第零部分：七层真实感正向模型（先读这一部分）

人类判断"是否实拍"用的不是"有没有第三只手"，而是一组正向特征。AI 画面**太整齐、太规整、太完美**，即使没有解剖错误也会被判为假。

| 层 | 真实素材必然具备 | AI 默认缺失 | 写法 |
|---|---|---|---|
| **1 传感器层** | 暗部噪点、高光溢出、白平衡两侧不一致、快动作微拖影 | 全部缺 | `a faint even grain from the phone sensor in the darker areas; one small area clips to pure white` |
| **2 机身层** | 单手举机、手臂疲劳微动、抬手时下沉 | 像三脚架/云台 | `the frame drifts a centimetre as the arm tires and re-centres once` |
| **3 场景层** | 5–8 件无关杂物 | 收拾得干干净净 | `a jumble of unrelated items: ... none of these objects move` |
| **4 表面层** | 产品灰尘、指纹、拇指落点磨损 | 全新无瑕 | `a fine layer of dust, two faint fingerprints near the grip` |
| **5 人物层** | 面部不对称（眉高/眼开合/单侧嘴角） | 对称假脸 | `one brow sits a little higher, one eye opens marginally wider` |
| **6 说话层** | 卡壳、换气、自我更正、音量不均、句尾衰减 | 广告播音腔 | `he starts, stops, breathes in and restarts; the first words come out too loud` |
| **7 动作层** | 打滑、没按到、重抓 | 机械臂 | `it slips a fraction in his palm, he re-seats his fingers` |

**核心判据**：第 6 层（说话不完美）与第 3 层（场景杂乱）对"像实拍"的贡献最大，也最常被忽略。

---

## 第零点五部分：全类目通用主模板（换品类只填 6 个槽）

`universal-master-template.txt` 里是**固定七层脚手架 + 6 个填空槽**：

| 固定段（一字不改） | 填空槽（换品类只换这 6 处） |
|---|---|
| 1 传感器与机身 | ① 人物（年龄/衣着/发型） |
| 2 人物真实度 | ② 手部微失误（打滑/没按到） |
| 3 动作与说话不完美 | ③ 说话不完美（卡壳/换气/衰减） |
| 4 场景杂乱底线 | ④ 场景与光源 |
| 5 连续性总锁 | ⑤ 无关杂物清单（5–8 件） |
| 6 声音 | ⑥ 产品结构锁 + 展态 + 接触锁 |
| 7 负向提示词 | — |

> **这就是"全类目通用"的实现方式**：七层真实感与品类完全解耦，品类只影响 6 个槽的内容。

---

## 核心架构：23 条铁律总览

```
A–Q：反缺陷层（治已见过的错）
R–W：正面真实感层（治"太干净"这个永远追不到底的问题）
```

```
┌─────────────────────────────────────────────────────────────────────────┐
│ 铁律 A：正向段零否定词（最严重误用）                                      │
│   正向提示词禁止出现 no/without/never/zero/avoid。                        │
│   H3 的 Cross-Attention 不建模否义词，只建模其后的名词——                 │
│   写 "no third hand" 等于在正面要求生成 third hand。                      │
│   所有禁止项只能放进 NEGATIVE PROMPT 字段。                               │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 B：只手任务守恒定律（Hand-Task Occupancy Law）                       │
│   任何时刻，画面里最多 2 个手部接触点。                                   │
│   长条/大件商品必须「先放置/悬挂固定 → 松手移出画面 → 再单手操作」。      │
│   禁止"双手扶住 X 端的同时伸手按开关"——那是 3 只手才能完成的动作。       │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 C：屏幕坐标 + 物体锚点（H3 官方第 14 行规范）                        │
│   禁用 left hand / right hand，改用 the hand entering from the left      │
│   edge of the frame / a single hand at the red grip on the upper end。    │
│   抽象解剖部位在翻转、过肩、俯拍时必然错乱，模型只能多造手来补位。        │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 D：T1–T5 商品形态档位（Universal Form Factor Tier）                  │
│   先判定商品尺寸档位，再决定交互语法。                                    │
│   T1微型/T2小型=可单手边拿边按；T3中型=需先放置或夹持；                   │
│   T4长条形(>35cm 或长宽比>4:1)/T5超大件=必须固定后松手再操作。            │
│   档位判定错误是"第三只手"的第一大来源。                                  │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 E：产品结构锁（Structure Lock）                                      │
│   逐项复述参考图的真实结构：比例、颜色分布、按键数量与形状、端头、       │
│   线缆、表面工艺，并声明"全片保持不变"。                                  │
│   圆形旋钮 vs 方形按键、橙色 vs 红色是最高频的货不对板点。               │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 F：单实例锁（Single-Instance Object Permanence）                     │
│   全片只有一件商品。每个切镜必须交代"它从上一镜哪里来"。                  │
│   安装后要拿在手里，必须写"从挂钩取下并握在手中"，否则会分身。            │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 G：原生手机直出光影（去糖水片）                                      │
│   禁用 cinematic / warm bokeh / rim light / shallow DoF / color grading。 │
│   统一：raw unedited vertical phone footage, deep depth of field,        │
│   flat cool-white fluorescent light, untouched skin with visible pores。 │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 H：表情去夸张化 + 台词口型守恒                                       │
│   禁用 big happy smile / excited / laughing loudly。                      │
│   统一 calm everyday expression + 每镜最多 1 次表情变化。                  │
│   台词词数 ≤ 镜头秒数 × 2.5（3.5 秒最多 8~9 词），超了必须拆镜。           │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 I：接触面锁定（Contact-Surface Lock）—— 治“产品悬空”                 │
│   每镜必须写清“产品的哪个面压在/贴在/握在哪个面上”，以及接触后的视觉结果。 │
│   磁吸：两个金属圆盘面贴平压在钢板面上，两片之间无可见缝隙。              │
│   挂钩：U 形金属丝钩挂在金属薄边上，金属丝整个搭在边沿。                  │
│   手持：手指包住红色软胶握把，拇指在前、指尖收在后。                      │
│   禁用模糊词 attaches to / snaps onto / sticks to —— H3 只理解成“靠近”。 │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 J：手—物耦合（Hand-Product Coupling）—— 治“手飘在物体旁边”          │
│   只要有手接触产品，必须同时写：手抓在哪一段 + 产品相对该手的位置。       │
│   禁止“a hand presses the button”，必须写“已握着的那只手抬起拇指去按”。  │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 K：单动作单运镜（One Action OR One Camera Move）—— 治“残影重影”      │
│   每镜只能有一个运动主体：镜头动 / 手部动 / 产品状态变，三选一。          │
│   手指接触产品的瞬间，镜头必须 static。                                   │
│   严禁“camera pushes in 同时 the hand presses” —— 必出半透明残影。        │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 L：悬挂物微动（Hanging Object Physics）—— 治“完美静止=悬空”          │
│   悬挂/手持/垂落的物体必须有约 2° 的一次微摆后停住。                      │
│   零摆动的垂直物体，人眼会直接判为“钉在空中的假物”。                      │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 M：去蜡人化面部（De-Wax Face）—— 随机池 + 禁固定痣 ★已修正           │
│   ⚠️ 旧版把五锚点写成固定清单（含"左颊一颗痣"），导致每张脸同一位置长痣。   │
│   现改为：从 references/persona-variation-pool.md 的 A–F 六组随机抽 1 组。 │
│   ① 痣为可选项，位置随机（右颊/下颌/眉尾/鼻侧/额角），禁止一律左颊        │
│   ② 允许完全无痣 ③ 连续两次生成禁用同一组                                 │
│   ④ 必写美国蓝领共性：日晒色差/鱼尾纹/法令纹/鼻翼毛孔/眉毛未修/           │
│      手部老茧/牙齿自然黄/发型随意                                          │
│   ⑤ 眼睛必须有虹膜环 + 一个小方形白高光（蜡人第一判据）                     │
│   全篇禁用 redness / flush / blush / rosy / uneven skin tone（会长腮红块）。│
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 N：异色污染隔离（Color-Bleed Isolation）—— 治“整张脸被产品染红”      │
│   当产品含高饱和色（鲜红/亮黄/荧光绿）且靠近皮肤时，必须补一句：           │
│   the red grips stay vivid but their color stays on the grips; the skin   │
│   keeps its own uniform natural tone with no red cast on face or hands.   │
│   + 光影句补：the flat white light is neutral so the red grips beside the │
│   face do not tint the skin.                                              │
│   这是删掉 redness 之后脸仍然发红的真正原因：产品颜色的全局注意力渗色。     │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 O：展态锁定（Open-State Lock）—— 治“可折叠品被画成折叠态”            │
│   可折叠/伸缩/可变形产品必须显式声明本片使用状态：                         │
│   fully unfolded and locked open: the three segments form one straight    │
│   continuous bar with the two hinge seams flat and closed flush.          │
│   折叠动作只能在专门的演示镜头里出现，且必须写明“这一段演示折叠过程”。       │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 P：小屏显不可读（Unreadable Display）—— 治“屏显数字乱码”             │
│   产品上任何小显示屏/数字窗，一律写：                                     │
│   a dark unlit rectangle with no readable digits or letters inside.       │
│   参考图里有数字时也只写“一个深色小方窗”，绝不要求模型渲染具体数字。       │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 Q：构图边界与穿模防护（Framing & Clipping）                          │
│   头部完整入画且头顶留空隙；产品末端与背景部件留至少一个掌宽间距；         │
│   画面四边只允许出现指定元素（治边缘孤立残块与灯具穿进发动机）。           │
│   灯带补曝光上限：bright but never blown out, 长边始终可见，白槽与黑机     │
│   身的分界线全程清晰。                                                    │
├─────────────────────────────────────────────────────────────────────────┤
│ ═════════ 以下 R–W 为“正面真实感层”（治“太干净”，比 A–Q 更关键）═════════ │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 R：去干净化底线（Anti-Clean Floor）★★★ 最高优先级                    │
│   以下 5 项必须至少写进 4 项，缺则前面 A–Q 全做对画面仍“一眼AI”：          │
│   ① 暗部传感器噪点 ② 强光处高光溢出 ③ 两侧白平衡不一致                    │
│   ④ 产品灰尘/2处指纹/拇指落点磨损 ⑤ 场景 5–8 件无关杂物                   │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 S：单机位少切镜（One Operator, Few Cuts）                            │
│   15 秒内最多 2–3 个镜头（真实 UGC 是连续镜，不是 4 个设计镜）。           │
│   每镜必须有机身微动：the frame drifts a centimetre as the arm tires。    │
│   禁止 smooth dolly / gimbal glide / locked-off tripod / rack focus /     │
│   aerial。允许镜内重新构图：he tilts the phone down to bring it into frame。│
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 T：说不完美的话（Imperfect Speech）★★★ 第二优先级                    │
│   每个说话镜必须写 ≥2 项：起句卡壳重来 / 填充词 / 自我更正 / 句中换气 /    │
│   音量不均 / 句尾衰减 / 边说边看产品。                                     │
│   <d> 标签里词仍准确，不完美由描述段承担 —— 口型对得上，语气是真的。       │
│   禁止广告播音腔：匀速、等长句、句尾上扬。                                 │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 U：动作不完美（Imperfect Action）                                    │
│   每个操作镜必须写 1 处微失误：打滑后重抓 / 拇指第一下没按到 / 角度没对齐   │
│   再调一次 / 手抖一下后稳住。                                             │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 V：场景杂乱底线（Clutter Floor）                                     │
│   每个场景必须列 5–8 件与产品完全无关的杂物，并声明 none of these objects  │
│   move during the shot。AI 会主动把场景收拾干净，这是重大破绽。            │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 W：生活切片而非广告脚本（Slice-of-Life, Not Ad Script）               │
│   真实带货视频是 1–2 个生活切片，不是钩子/展开/证明/号召四段式广告。       │
│   取消显式 CTA 镜头（真人不会对着镜头说“点下方小黄车”）。                  │
│   视频在动作中间结束，不在摆拍定格中结束。                                 │
│   人物是“边做事边随口说给拍他的人听”，不是“对着观众做主播”。               │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 X：文字分层（Text Layering）—— 与官方规范对齐                         │
│   官方规范：参考图中原有的 Logo / 包装文字 / 标签必须保持原样；             │
│            但不得生成任何新增字幕、标题、贴纸文字。                        │
│   所以不能一刀切写“100% 零文字”，必须分三层：                             │
│   ① 新增文字（AI 自己编的字幕/贴纸/价签/角标）→ 禁止                      │
│   ② 参考图原有文字（产品 Logo、包装印刷）→ 写 “keeps the original markings │
│      on the casing exactly as they appear in the reference”               │
│   ③ 小屏显（电量屏等）→ 写 “keeps the same small display state as the     │
│      reference”，绝不指定具体数字（指定就必乱码如 183/188）               │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 Y：穿模防护（Intersection Lock）★治产品与手指互相穿插                  │
│   每镜必须写清“手指在产品前面还是后面”，并声明产品表面在接触处连续完整。    │
│   通用句：The surface of the product stays continuous and unbroken where  │
│   the hand touches it. Fingers wrap the outside; no fingertip or nail     │
│   appears on the inside of the body; where a finger crosses in front, the │
│   finger covers that part and the product edge stops at the finger.        │
│   透明/玻璃瓶专属句：手指只能透过玻璃看到略暗略偏移的轮廓，瓶壁始终是完整  │
│   连续曲面挡在手指前面，手指绝不进入瓶体，液体绝不接触手指。               │
│   负向词必加：clipped fingers, fingers through object, hand inside product,│
│   intersecting geometry, fingers merged with product, broken silhouette.   │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 Z：前三秒钩子（3-Second Hook）★治开头没人看                          │
│   0–3 秒必须是“动作已在进行中 + 有可见阻力/反差/意外”，不是站着说话。      │
│   三要素：① 有物理动作在进行中 ② 有可见困难/反差/意外 ③ 产品第 1 秒已入画  │
│   六模板见 references/clipping-hook-and-scene-fix.md（H1–H6）。            │
│   首句禁止写场景交代与人物介绍；前 3 秒最多 1 句台词且 ≤6 词。              │
├─────────────────────────────────────────────────────────────────────────┤
│ 铁律 AA：人物有事可干（Occupied Task）★治站着干说                          │
│   每镜人物必须有一个“看得见的物理任务”，且任务在镜内有可见进展或阻力。      │
│   禁止：站着不动只说话 / 手在空中比划 / 把产品举胸前对着镜头展示。          │
│   场景必须取自“美国家庭真实场景库”（厨房/客厅/洗衣房/车库/餐桌/后院），     │
│   并写清双光源不匹配：窗外冷日光 + 头顶暖灯具，两色在墙面形成柔和渐变。      │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 第一部分：H3 官方语法（唯一正确的写法）

### 1. 字段顺序与格式
```
[首行对齐语句，仅在提供参考图时出现]
For the target video, at 0.00 seconds into the target video, <Picture 1> (from [Shot 1]) is fully referenced.

integrated_multimodal_description:
[全英文，只写正向画面事实，不含任何否定词]

overall_soundscape:
[1–4 句，只写持续环境底噪，不写事件队列]

non_diegetic_music:
[N/A 或 1–3 句纯乐器描述]
```

### 2. 切镜与时间戳
- `[Shot 1]` 不带时间戳。
- 后续镜头：`[Shot 2] At 00:03.500, the camera cuts to ...`（严格递增且小于总时长）
- 切镜动词仅限 5 个：`the camera cuts to` / `the shot cuts to` / `the shot transitions to` / `the shot changes to` / `the shot switches to`。
- 禁止 `dissolve` / `fade` / `wipe`。
- 仅改变距离或角度时只写运镜，不切镜。

### 3. 运镜写法
- 必须写成自然英文句子，含运动类型，必要时补幅度与速度：
  `The camera pushes in with small amplitude at slow speed toward the small square button.`
- 环绕运镜写 `The camera trucks left while panning right around the product`，**禁止**写 orbit / surround。
- 静态写 `The camera holds a static shot as the product remains centered.`
- 优先用屏幕几何坐标，禁止抽象身体部位。

### 4. 台词标签
- 每个说话角色固定编号 `(S1)`、`(S2)`。
- 身份、音色、微表情写在标签外；台词本体用 `<d>` 包裹：
  `A tired middle-aged mechanic (S1) speaks directly to camera in a flat conversational tone: <d>[English] "Took me twenty years to find a light that actually clips on."</d>`
- 旁白：`A calm voiceover (S1) says: <d>[English] "..."</d>`，并写明 `the person on screen keeps their lips closed`。
- 跨镜头台词两端加 `<scenetrans>`；片尾截断加 `<cutoff>`。
- **词数守恒**：镜头秒数 × 2.5 = 最大英文词数。

### 5. 声音双字段
- `overall_soundscape:` 2–4 句，只写**持续环境**（`Low steady garage room tone, faint birdsong from the open door, the quiet hum of the COB strip.`）。**禁止**罗列撞击/摩擦事件序列，否则 H3 会机械重复同一音效。
- `non_diegetic_music:` 需配乐时写 1–3 句乐器/速度/强弱，不用情绪词；原声实拍写 `N/A`。

---

## 第二部分：只手任务守恒与 T1–T5 商品形态档位（根除第三只手）

### 0. 写提示词前的三步路由（必做）

```
第 1 步：判 T 档位  —— 尺寸决定"单手能不能边拿边按"（见下表）
第 2 步：判 C 品类  —— 决定交互动词与专属语法（见下表，详规见 references/category-extension-grammar.md）
第 3 步：判 S 监管类目 —— 是否命中 S1–S8 特殊监管品类★（见下表，详规见 references/special-category-compliance.md）
然后套用 24 条铁律输出
```

| S 代号 | 特殊监管品类 | 额外红线（命中必须加载） |
|---|---|---|
| **S1** | 保健品 / 膳食补充剂 | 禁疾病宣称（treats/cures/prevents）；需 FDA 免责声明进 Caption |
| **S2** | 医疗器械 / 健康器械 | 禁未获批医疗功效；只能用 wellness/relief/comfort 表述 |
| **S3** | 化妆品功效 | 禁改变结构/功能、禁医疗化、禁伪造前后对比；只能到"外观"层 |
| **S4** | 儿童 / 母婴 | 禁绝对安全宣称；禁替代监护；CPC/ASTM 认证不得虚构 |
| **S5** | 锂电池 / 充电类 | 禁"永不爆炸/永不过热"；禁虚假容量；禁危险演示 |
| **S6** | 食品 / 食品接触材料 | 禁疗效宣称（detox/burns fat）；禁无依据"食品级"；禁绝对保鲜 |
| **S7** | 汽车安全件 | DOT/SAE/FMVSS 不得虚构；禁安全绝对化；禁宣称可替代专业安装 |
| **S8** | 刀具 / 危险品 / 受限商品 | 部分州禁售；禁对人对动物演示；刀刃远离人体；禁暴力关联 |

> **特殊监管品类的口播只能落在两层**：① 我自己的使用感受 ② 眼睛能看到的外观变化。
> **绝不能落到四层**：治疗 / 安全 / 认证 / 绝对效果。

| C 代号 | 品类 | 常见 T 档 | 专属语法要点 |
|---|---|---|---|
| C1 | 日用百货 | T2–T4 | 开合**状态必须显式声明**，状态变化要有中间动作 |
| C2 | 美妆个护 | T1–T2 | 皮肤**正向细描**（可见毛孔/汗毛/干斑）；指腹接触非指甲；用量+轨迹+终点 |
| C3 | 车载汽配 | T3–T4 | 车辆**中性化**（an American pickup truck）；安装位具体到物理结构；机舱写真实脏旧 |
| C4 | 时尚配件 | T1–T2 | **反射锚定**真实环境物；细链条写重力形态；佩戴走"双手举起→落位→单手调整" |
| C5 | 穿戴（服装/鞋/包/眼镜） | **T 失效** | 改用**身体锚点**（肩/颈/腰/腕/脚）；上身三段式；走动写步频摆幅 |
| C6 | 食品饮料与清洁消耗品 | T2–T3 | **倾倒写液面高度变化**；喷洒写喷头朝向+雾形+落点；涂抹写施力方向+污渍变化 |
| C7 | 强反光与透明材质 | T1–T3 | **每个反射逐一锚定为真实环境物**；透明件写背后物体；屏幕强制暗态 |
| C8 | 多人协作品 | T4–T5 | **逐人计数**（每人 ≤2 接触点）；松手与接手顺序显式写出 |

> **判定口诀**：先问"这商品一只手能不能同时握住又按按钮"→ 不能就是 T3 以上；再问"它有没有握持这个动作"→ 没有（穿戴类）就走身体锚点；再问"有没有液体/反光/第二个人"→ 分别加载 C6 / C7 / C8。

### 1. 先判档位，再写动作

| 档位 | 典型商品 | 单手可稳握？ | 交互语法 |
|---|---|---|---|
| **T1 微型** | 口红、耳钉、指甲刀 | ✅ | 单手握持 + **同手拇指/食指**操作 |
| **T2 小型** | 保温杯、手持风扇、充电宝 | ✅ | 单手握持 + 另一只手食指操作（允许） |
| **T3 中型** | 折叠四头风扇、抽真空机 | ⚠️ 短暂 | **操作前必须先放置或夹持固定** |
| **T4 长条形** | 长条检修灯、伸缩杆、拖把 | ❌ | **固定 → 松手 → 单手操作** |
| **T5 超大件** | 收纳箱、行李箱、折叠椅 | ❌ | 只抱持/放置/拍打，操作在放置后 |

**判定规则**：最长边 > 35cm 或 最长边 ÷ 8cm ≥ 4.5 → 一律按 T4 处理。

### 2. 四类安全交互模板

**模板 1 · TABLE-PLACE（T3/T4/T5）**
```
Both hands set the product down flat on the workbench. Both hands pull away and exit the frame. A single hand then enters from the right edge of the frame, and the index finger of that hand presses the small square button.
```

**模板 2 · HANG-LOCK（T4 长条灯、挂钩类）**
```
Both hands raise the bar and press its rear clips onto the metal edge of the open hood until it clicks. The two hands release and withdraw from the frame. The bar hangs in place on its own. A single hand then enters from the lower left of the frame and its index finger presses the small switch beside the LED strip.
```

**模板 3 · ONE-HAND-HOLD（T1/T2）**
```
A single hand grips the middle of the product. The thumb of that same hand presses the round button on the top face.
```

**模板 4 · TWO-PERSON-EXCHANGE（双人交接）**
```
A single hand at the left end of the bar passes it to a single hand at the right end held by a second person. Each person touches the bar with exactly one hand.
```

### 3. 高危写法黑名单（必出第三只手）

| ❌ 危险写法 | ✅ 改写 |
|---|---|
| `holds the bar with both hands and presses the button` | 固定 → 松手 → 单手按 |
| `holds the product and wipes the hood with the other hand` | 先擦完 → 再拿；或放稳 → 再擦 |
| `holding the product and a rag` | 拿产品时手里不出现第二件道具 |
| `adjusting multiple fan heads simultaneously` | `one hand rotates one head at a time` |
| `quickly flips the product` | `slowly turns the unit so the back panel faces the camera` |

### 4. "活人感小动作"必须绑定在商品上
- ✅ `the thumb of the gripping hand rubs the red rubber grip once`
- ✅ `one hand wipes the light strip with a corner of the work shirt`
- ✅ `the hand turns the black rubber foot at the end of the bar half a turn`
- ❌ 拿商品的同时拿抹布、扳手、咖啡杯、手机

---

## 第三部分：产品结构锁与单实例锁（根除变形、分身、货不对板）

### 1. 结构锁六项检查（缺一项就变形）
1. **整体比例**：长宽比、与手掌的倍数关系
2. **颜色分布**：哪一段什么颜色（写"两端红色、中段哑光黑"，不写"红色点缀"）
3. **按键**：数量、形状（方/圆）、位置、是否有旋钮
4. **端头形状**：脚座、可转动、卡扣凸起
5. **线缆**：颜色、是否可见、是否卷绕
6. **表面工艺**：哑光 / 亮面 / 磨砂 / 拉丝

### 2. 结构锁模板
```
<Product structure lock>
The product is one slender matte-black plastic bar roughly forty centimeters long. Each end is capped with a bright red soft-rubber grip. The long front face carries a single continuous COB light strip in yellow and white inside a black frame. Two small rectangular rubber buttons sit on the upper side, one directly above the other. The back is one molded matte-black plate with two U-shaped hanging slots. A single white USB cable lies coiled beside it. This exact structure, color placement, button shape and count, and surface finish stay identical in every shot.
```

### 3. 单实例锁模板
```
There is exactly one unit of this product in the entire video. The unit appears once in the frame, in one place at a time. When the shot changes, the same unit is carried over physically: it is unhooked from the hood and held in one hand, or it stays in place and the camera moves.
```
> 口诀：**每个切镜都要能回答"这件东西从上一镜哪儿来"**，答不上来就会分身。

### 4. 连续态锁：每个切镜第一句交代承接
| 上镜结尾 | 本镜第一句必须写 |
|---|---|
| 产品吸在机盖上 | `The same single bar is still stuck to the hood where it was, and the camera now looks at it from a lower angle.` |
| 产品在手里 | `The same single bar is still in the same hand, held in the same way.` |
| 产品放桌上 | `The same single bar still lies flat on the bench in the same position.` |

---

## 第三部分之二：接触面锁定与手—物耦合（根除悬空、手飘旁边）

### 1. 接触面锁定（铁律 I）— 治"灵异悬空"

**核心**：H3 不理解 `attaches to` / `snaps onto` / `sticks to` / `mounted on`——这些词在它眼里只是"靠近"。必须写**哪个面压在哪个面上 + 接触后的视觉结果**。

| 固定方式 | 必须写的接触描述（逐字可抄） |
|---|---|
| **磁吸** | `the flat face of the two round steel discs presses flush against the flat underside of the steel hood, the two surfaces touching with no visible gap` |
| **挂钩** | `the U-shaped wire hook hooks over the thin metal lip of the hood edge, the wire lying flat on the lip` |
| **手持** | `the fingers wrap around the red rubber grip section so that the thumb rests on the front face and the fingertips close behind it` |
| **平放** | `the whole bar rests flat on the workbench, its full length in contact with the wood` |
| **插入/卡扣** | `the plug goes fully into the socket until the metal collar meets the housing and stops` |

> **自检口诀**：每一帧都要能指出"产品的哪个面，压在哪个面上"。指不出来 = 一定会悬空。

### 2. 手—物耦合（铁律 J）— 治"手飘在物体旁边"

只要画面里有手接触产品，**必须同时写两件事**：

```
One hand grips the lower red grip section with the fingers fully closed around it; the bar hangs straight down from that hand, its magnetic head two palm-widths below the fingers.
```

- **① 手抓在哪一段**（lower red grip / middle black body / upper magnetic head）
- **② 产品相对该手的位置**（hangs straight down from that hand / two palm-widths below the fingers）

❌ 禁止单独写 `a hand presses the square button`（会得到"指尖悬空点按钮"）
✅ 必须写 `the hand that already grips the middle section lifts its thumb and presses the square button`

### 3. 单动作单运镜（铁律 K）— 治运动残影

- 每个镜头**只能有一个运动主体**：① 镜头动 ② 人物局部动 ③ 产品状态变。**三选一**。
- **手指触碰产品的瞬间，镜头必须 static**：
  `The camera holds a static shot. The hand slowly moves toward the button and the fingertip presses it once.`
- ❌ 严禁 `the camera pushes in while the hand presses the button`（必出半透明残影）
- ❌ 严禁同一句里写两个以上动作（如"推近 + 转手 + 按下 + 灯亮"）

### 4. 悬挂物微动（铁律 L）— 治"完美静止=悬空"

真实悬挂/手持物必然有微小响应，必须写一次：
```
The bar swings once by about two degrees on its hook and settles, then stays still.
```
手持时：`the bar tips very slightly with each small hand movement`

### 5. 灯带/发光面不拖影

```
The COB strip is a flat, even white light with a crisp edge, its brightness uniform from end to end, the strip's outline sharp against the black body.
```
❌ 禁用：`glowing / beaming / shining brightly / luminous glow / light rays`（H3 会生成光晕拖影）

---

## 第四部分：原生手机直出光影与真实人物（去糖水片、去蜡像脸）

### 1. 拍摄设备：Apple iPhone 17 Pro Max 多焦段

| 焦段 | 用途 | 提示词片段 |
|---|---|---|
| **13mm (0.5x)** | 狭窄空间全景、座舱交代 | `Apple iPhone 17 Pro Max 13mm ultra-wide lens, handheld` |
| **24mm (1x)** | 黄金 UGC 带货机位 | `Apple iPhone 17 Pro Max 24mm main lens, optical grade` |
| **35mm (1.5x)** | 中近景口播 | `Apple iPhone 17 Pro Max 35mm focal length` |
| **48mm (2x)** | 双手协同、安装特写 | `Apple iPhone 17 Pro Max 48mm 2x telephoto crop` |
| **120mm (5x)** | 按键行程、材质微距 | `Apple iPhone 17 Pro Max 120mm 5x periscope telephoto macro` |

### 2. 光影语法（必须正向写出，不能靠否定）
```
Shot on Apple iPhone 17 Pro Max in raw unedited vertical footage. Deep depth of field: the mechanic, the product, and the cluttered garage behind him all remain sharp. Flat cool-white fluorescent ceiling light mixed with flat daylight from the open garage door. The only light reaching the face comes from that neutral overhead tube. The paint of the car keeps its ordinary worn finish.
```

### 3. 人物真实度语法（五锚点写法 · 全篇禁 redness）
```
(从 references/persona-variation-pool.md 的 A–F 六组中随机抽 1 组，整段粘贴；以下为共性固定句，必须保留)
This is one specific ordinary person, not a model and not a presenter. The face carries the ordinary marks of a working life: uneven tone between the face and the neck, open pores across the nose and inner cheeks, natural creases, and eyebrows that have never been shaped. The skin is matte and dry to the touch, with the only shine being one small spot on the bridge of the nose. The eyes carry a visible dark iris ring and one small rectangular white catchlight in each eye from the room light.
```
> **五锚点缺一不可**：① 毛孔位置 ② 细纹 ③ 痣/斑 ④ 胡茬 ⑤ **眼睛虹膜环 + 小方形高光**。
> 第 ⑤ 项是"蜡人感"的第一判据——没写眼睛高光，脸一定是死的。

> ⚠️ **毒词黑名单（上一版自伤 bug，必须全篇删除）**：`redness`、`flush`、`blush`、`rosy`、`uneven skin tone`。
> 写这些词 H3 会画出**两颊腮红状红块**，比不写更假。真实皮肤靠毛孔/细纹/痣/胡茬/眼睛高光来写，不靠"泛红色"。

### 4. 表情去夸张化
- ✅ `a calm everyday expression, brief closed-lip acknowledgment, one natural blink, a small nod`
- ❌ `big happy smile`、`excited`、`laughing loudly`、`amazed expression`
- 每个镜头最多 1 次表情变化。

### 5. 小动作守恒（每镜最多 1 个）
`He shifts his weight from one foot to the other once.` / `He blinks once before speaking.` / `He swallows once.`
> 不要在一句话里堆 3 个以上生理动作，会让 H3 的动作调度崩坏。

---

## 第五部分：TikTok 8 大爆款原型与选型算法

详见 `references/viral-script-vault.md`。速查：

| ID | 原型 | 黄金钩子 | 最适合品类 |
|---|---|---|---|
| `skeptical_pro` | 老手挑刺到真香 | "Apprentice bought this online, swore it'd replace my $200 tool." | 车配、五金、户外、维修 |
| `gift_twist` | 送礼反转打脸 | "Told him never to buy random gadgets from TikTok Shop again..." | 家居、厨电、车载、个护 |
| `caught_steal` | 同事顺走抓包 | "Caught my coworker sneaking this off my desk again." | 桌面好物、杯具、香薰 |
| `silent_asmr` | 纯物理实测 ASMR | "Stop wasting cash on flimsy plastic replicas." | 精密工具、磁吸件 |
| `frustrating_caught` | 尴尬痛点抓包 | "Every single commute ended in this exact disaster." | 收纳、车载应急、清洁 |
| `buyer_remorse` | 后悔买晚了反转 | "I genuinely regret buying this stupid gadget..." | 全品类通杀 |
| `deconstruction` | 同款拆解避坑 | "Paid $15 for this flimsy junk last week." | 五金、线材、耐用品 |
| `emergency_save` | 绝境自救 | "Stranded in a pitch-black lot with a dead battery." | 应急电源、充气泵、手电 |

**选型算法**：① 按品类匹配原型；② 按形态档位设计交互；③ 注入结构锁与单实例锁；④ 合规过滤后双模输出。

---

## 第六部分：TikTok Shop 美区合规防封（2026年11月 · 沿用）

### 1. 口播极限词黑名单（0 容忍）

| 违禁 | 合规替换 |
|---|---|
| `100% theft-proof` / `impossible to steal` | `heavy-duty visual deterrent that makes people walk past` |
| `instant cold in 1 second` | `strong steady airflow right where you need it` |
| `unbreakable` / `indestructible` / `military-grade` | `dense solid build that feels tough in your hands` |
| `best in the world` / `cheapest ever` | `a solid upgrade for under thirty bucks` |
| `factory is going bankrupt` / `only 2 left` | `found this during the seasonal restock` |
| `TikTok pays 90% today` | `snagged mine before this batch sold out` |
| `cures back pain` / `medical-grade` | `comfortable support for long driving hours` |
| `Apple authorized` / `Ford certified` | `fits most standard USB-C ports` |

### 2. 画面合规
- 100% 纯净原片：无字幕、无文字、无水印、无促销贴纸（留给后期 CapCut 与官方小黄车）。
- 品牌隔离：`an American pickup truck`、`a modern crossover SUV`、`a standard handheld smartphone`。
- 禁止伪造前后对比与恶意贬低竞品。

---

## 第七部分：标准交付结构（双模）

```text
================================================================================
【一、诊断与选型】
- 商品形态档位：T1 / T2 / T3 / T4 / T5（含判定依据：长度、长宽比）
- 结构锁：比例 / 颜色分布 / 按键数量与形状 / 端头 / 线缆 / 表面工艺
- 匹配爆款原型：<archetype_id>（黄金钩子：…）
- 拍摄设备与焦段分配：Apple iPhone 17 Pro Max（24mm / 48mm / 120mm …）
- 手部任务规划：每个 Shot 的手部接触点数量与动作归属

================================================================================
【二、分镜剧本（Shot 1–4）】
Shot 1 [00:00 - 00:03.500] (Hook)
- 焦段与运镜：
- 手部接触点（≤2）：
- 小动作（1 个）与表情（1 次变化上限）：
- 台词（≤8 词）：<d>[English] "..."</d>

Shot 2 [00:03.500 - 00:07.500] (Action)
- 焦段与运镜：
- 交互模板（TABLE-PLACE / HANG-LOCK / ONE-HAND-HOLD）：
- 手部接触点（≤2）：
- 台词：<d>[English] "..."</d>

Shot 3 [00:07.500 - 00:11.500] (Proof)
- 焦段与运镜：
- 交互模板：
- 手部接触点（≤2）：
- 台词：<d>[English] "..."</d>

Shot 4 [00:11.500 - 00:15.000] (CTA)
- 焦段与运镜：
- 单实例交代（从上镜哪里来）：
- 手部接触点（≤2）：
- 台词：<d>[English] "..."</d>

================================================================================
【三、输出模式 1：MiniMax H3 官方 Context-IR 三字段】

For the target video, at 0.00 seconds into the target video, <Picture 1> (from [Shot 1]) is fully referenced.

integrated_multimodal_description:
[全英文。正向段严禁出现 no/without/never/zero/avoid。
 必须包含：拍摄设备与焦段、原生直出光影、真实肤质正向描述、
 结构锁段、单实例锁句、每镜 ≤2 手部接触点、
 递增时间戳与规范切镜动词、(S1) says: <d>[English] "..."</d>、
 纯净原片声明（用正向写法：the frame carries only the product, the person and the garage）]

overall_soundscape:
[2–4 句持续环境底噪]

non_diegetic_music:
[N/A]

================================================================================
【四、输出模式 2：单段连续 Master Prompt（海螺 AI 一键复制）】
[整段英文不换行，内容与模式 1 等价]

================================================================================
【五、负向提示词（所有禁止项只放这里）】
extra hands, third hand, extra arms, floating hands, disembodied fingers,
mutated hands, deformed fingers, oily skin, greasy forehead, plastic skin,
wax doll, cartoon rendering, 3D animated look, cgi glow, rim light, bokeh,
shallow depth of field, color grading, subtitles, captions, on-screen text,
letters, watermark, brand logos, product duplicated, duplicated object,
big open-mouth smile, stiff posing, standing idle, low resolution.

================================================================================
【六、TikTok 文案与标签】
- Caption: ...
- Hashtags: #tiktokshop #...
================================================================================
```

---

## 第八部分：输出前 36 项自检（任何一项不过，不许输出）

1. **正向段是否出现否定词？**（`no` / `without` / `never` / `zero` / `avoid` / `rather than`）→ 必须为 0 处。
2. **是否完成了 T 档位 / C 品类 / S 监管类目 三步路由？** → 必须写明 T1–T5 与 C1–C8（穿戴类注明 T 失效）；若命中 S1–S8 必须加载对应红线。
3. **是否出现 `left hand` / `right hand`？** → 必须为 0 处，全部改为屏幕坐标 + 物体锚点。
4. **每个镜头是否 ≤2 个手部接触点？**（C8 多人场景：**每人** ≤2）→ 逐镜逐人点数。
5. **长条/大件商品是否遵循「固定 → 松手 → 单手操作」时间链？** → 必须显式写出松手动作。
6. **拿商品时是否出现第二件道具（抹布/扳手/杯子）？** → 必须为 0。
7. **是否写了结构锁六项？**（比例/颜色分布/按键形状位置/端头/线缆/表面工艺）
8. **是否写了单实例锁与切镜来源交代？**
9. **是否出现 `cinematic` / `bokeh` / `rim light` / `color grading`？** → 必须为 0，改为原生直出语法。
10. **是否出现 `big happy smile` 类夸张表情？** → 必须为 0，改为 calm everyday expression。
11. **台词词数 ≤ 镜头秒数 × 2.5？** → 逐句数词。
12. **`overall_soundscape` 是否只写持续环境、未罗列事件序列？** → 必须为 2–4 句环境描述。

### 新增 6 项（治悬空 / 残影 / 分身 / 蜡人）

13. **接触面锁定**：每镜是否能指出「产品的哪个面，压在哪个面上」？→ 指不出就是悬空，必须补写。
14. **手—物耦合**：有手接触产品时，是否同时写了「手抓在哪一段」+「产品相对该手的位置」？→ 缺一即"手飘旁边"。
15. **单动作单运镜**：每镜是否只有 1 个运动主体？手指触碰产品的瞬间镜头是否 static？→ 否则必出残影。
16. **悬挂物微动**：悬挂/手持/垂落的物体是否写了约 2° 的一次微摆后停住？→ 零摆动会被判为悬空。
17. **连续态锁**：每个切镜第一句是否交代了「同一件东西从上一镜哪个位置承接过来」？→ 缺则分身。
18. **去蜡人化五锚点**：是否写全 ①毛孔位置 ②细纹 ③痣 ④胡茬 ⑤**眼睛虹膜环+小方形高光**？
    且全篇 **`redness` / `flush` / `blush` / `rosy` / `uneven skin tone` 是否已清零**？→ 阳性即会长腮红块。

### 新增 4 项（治红脸污染 / 折叠态 / 屏显乱码 / 穿模）

19. **异色污染隔离**：产品含高饱和色（鲜红/亮黄/荧光绿）且靠近皮肤时，是否写了「颜色只留在产品上，
    皮肤保持自身统一色调、无红色渗出」+「白光中性，产品颜色不给皮肤染色」？→ 缺则整张脸被染红。
20. **展态锁定**：可折叠/伸缩产品是否声明「完全展开并锁定，各段成一条直线，铰链缝平直闭合」？
    折叠是否只出现在专门演示镜头？→ 缺则被画成折叠态、长度不对。
21. **小屏显不可读**：所有小显示屏是否写成「深色未点亮的矩形窗，内部无任何可读数字或字母」？
    → 缺则必出 "183"、"188" 这类乱码。
22. **构图与穿模**：是否写了「头部完整入画且头顶留空隙」「产品末端与背景部件留一个掌宽」
    「画面四边只含指定元素」「灯带明亮但不爆白、长边始终可见」？→ 缺则裁头、穿模、边缘残块、灯带爆白。

### 新增 7 项（正面真实感层 R–W · 治"太干净"）

23. **去干净化底线（R）**：①暗部传感器噪点 ②强光高光溢出 ③两侧白平衡不一致
    ④产品灰尘+2处指纹+拇指落点磨损 ⑤场景 5–8 件无关杂物 —— **5 项中至少写 4 项**。
    → 缺则前面 22 项全做对，画面仍"一眼AI"。**这是最高优先级的一条。**
24. **单机位少切镜（S）**：镜头数是否 ≤3？每镜是否写了"手臂疲劳导致机位偏移 1–2cm 后重新居中"？
    是否已清零 `dolly` / `gimbal` / `tripod` / `rack focus` / `aerial`？
25. **说话不完美（T）**：每个说话镜是否写了 ≥2 项（卡壳重来/填充词/自我更正/换气/音量不均/句尾衰减）？
    `<d>` 内文字是否仍准确？是否清除了广告播音腔？→ 缺则像配音，是"假"的头号来源。
26. **动作不完美（U）**：每个操作镜是否写了 1 处微失误（打滑重抓/拇指没按到/角度重调/手抖后稳住）？
27. **场景杂乱（V）**：是否列了 5–8 件无关杂物并声明 `none of these objects move during the shot`？
28. **生活切片（W）**：是否已取消显式 CTA 镜头？视频是否在动作中间结束而非摆拍定格？
    人物是否"边做事边随口说给拍他的人听"而非"对着观众做主播"？
29. **真实感六问**（终极判定）：噪点/高光溢出/白平衡？机身手臂微动？场景 ≥5 件杂物？
    产品有灰尘指纹磨损？说话有卡壳换气？手有打滑没按到？→ **六问全过才算像实拍。**
30. **文字分层（X）**：是否只禁止「新增字幕/贴纸/价签」？参考图原有 Logo 与包装文字是否写了
    「保持与参考图一致」？小屏显是否写成「保持与参考图相同的显示状态」（**不指定具体数字**）？
    → 一刀切写「零文字」会与官方「原文字须保留」冲突；指定数字必出 183/188 乱码。
31. **特殊监管类目（S1–S8）**：产品是否命中保健品/医疗器械/化妆品功效/儿童母婴/锂电池/
    食品接触/汽车安全件/刀具危险品？→ 命中必须加载 
eferences/special-category-compliance.md
    对应段落，台词只允许落在「个人使用感受 + 可见外观变化」两层，
    **不得落到治疗/安全/认证/绝对效果四层**；需要的法定声明只放 Caption，不放画面。

### 新增 5 项（治固定痣 / 穿模 / 开头没人看 / 站着干说 / 产品变形）

32. **人物不重复（M 修正）**：是否从 A–F 六组随机抽 1 组？是否**没有**把「左颊痣」写成固定项？
    若含痣是否写明了该组指定的随机位置？是否包含美国蓝领共性特征？是否与上一版人物明显不同？
    → **每张脸都有同一位置的痣 = 模板脸，必须重抽。**
33. **穿模防护（Y）**：每镜是否写清了「手指在产品前面还是后面」？产品表面在接触处是否声明连续完整？
    玻璃/透明产品是否写了「瓶壁始终挡在手指前面、手指不进入瓶体」？
    负向词是否含 clipped fingers / fingers through object / intersecting geometry？
34. **前三秒钩子（Z）**：At 00:00.000 第一句是否为**正在进行的动作**（不是站着看镜头）？
    是否有可见阻力/反差/意外？产品是否第 1 秒已入画？前 3 秒台词是否 ≤6 词？
35. **人物有事可干（AA）**：每镜人物是否有看得见的物理任务且在镜内有进展？是否已清除
    「站着只说话 / 手在空中比划 / 把产品举胸前对镜头展示」三种广告姿势？
36. **产品一致性五锁**：每个切镜是否重申「同一件、总长度不变、比例不变、端头/盖子形状不变、
    内容物颜色与液面不变、相对手的大小不变」？→ 缺则产品在切镜间变形。

### 品类专项追加自检（命中即查）

- **C2 美妆**：皮肤是否五锚点细描？涂抹是否写了「用量 + 轨迹 + 终点」？
- **C3 车配**：车辆是否中性化？安装位是否具体到物理结构？机舱是否写了真实脏旧？**磁吸面是否写了贴合**？
- **C5 穿戴**：是否完全不再出现"手握着商品"？动作是否挂在肩/颈/腰/腕/脚上？走动是否写了步数？
- **C6 食品清洁**：倾倒是否写了**液面高度变化**？喷洒是否写了喷头朝向 + 雾形 + 落点？
- **C7 反光透明**：每个反射是否都指向画面里真实存在的物体？屏幕是否强制暗态？
- **C8 多人**：是否逐人计数？松手与接手的先后顺序是否显式写出？
