# 深度病理诊断报告：为什么生成的 AI 视频假、出现第三只手、人物蜡像化？
# （基于 task_CVgbF7jQtVNtUzEBngpeTsMRbMbzPoNq.mp4 与 task_zk4jS16z0C0mnJvrX8RbuByzbLlW5kF4.mp4 双视频逐帧取证 + 真实产品图 IMG_1124/IMG_1125 对照）

---

## 〇、真实产品图告诉我们什么（对照基准）

真实产品（IMG_1125 背面 / IMG_1124 正面）的客观事实：
- **细长条形检修灯**，长度约为手掌的 3~4 倍（约 35~40cm），**单手无法稳握中部**，只能握一端；
- **两端为红色软胶握把**（哑光红，非亮光塑料），顶部/底部均有 **黑色橡胶万向脚（可 360° 转动）**；
- 正面中央为 **长条 COB 面光源（黄白双色）**，被黑色哑光边框包裹；
- 侧面仅有 **两个小方按键**（电源键 + 模式键），紧贴 COB 灯条上端；
- 背面为 **一体成型黑色哑光塑料背板 + 两道 U 型挂钩卡槽**；
- 附带 **一根白色 USB 充电线**（单根，卷绕状）。

> **关键结论 1**：这不是一个小巧产品。**任何"一只手拿产品、另一只手干活"的经典带货动作，在这个产品上物理上就不成立**，因为一只手握不住这么长的灯且还要按住开关。这是"第三只手"的**根本物理成因**——提示词命令 AI 完成一个物理上必须 3 只手才能完成的动作。

> **关键结论 2**：视频里出现的 AI 产品是 **黑色亮面机身 + 橙色（而非红色）握把 + 圆形旋转旋钮 + 顶部红色小卡扣凸起**，与真实产品（**红色握把 + 小方按键 + 无旋钮 + 哑光黑机身**）**完全不符**。这是"参考图只用文字描述、没有强制锁定物理结构"导致的 AI 自由发挥。

---

## 一、视频 A（车库老技工版）逐帧取证：五大翻车

| 时间点 | 画面事实 | 根因 |
|---|---|---|
| 0.0s–2.5s | 老技工右手握灯一端，**左手捏着一块粉白抹布**，灯的右半截**凭空虚浮** | 「找事做」被写成"擦抹布"，双手任务冲突，AI 放弃了托住另一端 |
| 2.5s–7.0s | 机舱特写，画面左侧一只手抓灯左端、画面右侧一只手抓灯右端，然后**从画面左下角凭空长出第三只手**去按开关 | 同时要求"双手扶住长灯两端"+"伸手按开关"，2 只手干 3 只手的活 |
| 12.0s–14.5s | 老人胸前捧着灯，**发动机舱边缘还躺着另一根一模一样的灯** | 切镜时没写"把唯一那件灯从车上取下"，H3 在原位保留一件、手里又生成一件 |
| 全片 | 车库挂着**圣诞彩灯 bokeh 光斑**，门外是油画感假豪宅，人脸有**橘色剧场轮廓光** | 写了 `warm lighting / bokeh / background roll-off` 摄影棚美化词，触发 H3 广告大片权重 |
| 全片 | 老人**张大嘴假笑定格**，肤质是蜡像质感反光 | 写了 `big happy smile` 等表演夸张词；且无任何"真实曝光/无修图"约束 |
| 全片 | 台词与口型对不上，声音像 TTS 假读 | 台词字数超过镜头秒数（1 秒 ≈ 2.5~3 词），口型被硬挤 |

---

## 二、视频 B（修理工版，产品图已上传）逐帧取证：问题依然存在

| 时间点 | 画面事实 | 根因 |
|---|---|---|
| 0.0s–2.5s | 一只手握灯，**另一只手竟还捏着白色抹布**，灯悬空 | 同 A：小动作与商品手冲突 |
| 3.5s–7.0s | 双手举起灯往机盖挂钩上卡，**画面里出现 3 只手同时操作**（左下角多出一只手） | 同 A：双手已占满，AI 又需要"扶/按"，多生一只手 |
| 7.5s–11.0s | 画面里**至少 4 只手**抓在灯上：上方双手抓灯，下方还有一只手伸向灯 | 双手任务描述里同时出现"扶住 / 按下开关 / 调整角度"，AI 为每个任务分配一只手 |
| 11.5s–14.5s | 切回人物半身，**手里的灯变形**（两端红色变成橙色、机身出现原产品没有的圆形旋钮、长度比例变化） | 没有强制「产品结构锁」，产品在切镜间自由变形 |
| 全片 | 修理工**全程张嘴假笑**，牙列异常、表情几乎每一帧都相同 | 台词与表演词过于夸张 + 缺少"真实表情区间"约束 |
| 全片 | 车身/引擎舱像 CG 渲染，油漆面有塑料高光 | 写了 `cinematic / glossy / clean engine bay` 类词 |
| 全片 | 音频全程 "哐哐" 金属撞击声重复，与画面动作不同步 | soundscape 写了过多具体撞击事件，H3 逐条生成导致机械重复 |

---

## 三、MiniMax H3 官方机制层面的五条致命误用

### 误用 1：在正向提示词里写否定词（最严重）
MiniMax H3 官方 Context-IR 规范要求：`integrated_multimodal_description` 是**正向画面事实描述**。官方示例与全部参考素材中，从不出现 `no xxx`、`without xxx`、`do not xxx`。

- 扩散模型 / 视频 DiT 的 Cross-Attention 对 `no / without / zero / never` 这类**否义词本身不建模**，只建模它后面的名词 Token；
- 所以写 `no third hand, no extra hands, no oily skin, no cartoon, no CGI glow` 的结果是**把 `third hand`、`extra hands`、`oily skin`、`cartoon`、`CGI glow` 直接注入注意力权重**，等于在正面要求生成这些元素；
- **正确做法**：正向段只写画面里**确实存在的东西**（"画面中只有两只手，一只在左端红色握把处，一只在机身按键处"），把所有禁止项**只放在 NEGATIVE PROMPT 字段**。

### 误用 2：用抽象身体部位（left hand / right hand）代替屏幕几何坐标
H3 官方规范第 14 行明确要求：**"优先使用画面中可见的几何关系和坐标，而不是抽象的左右身体部位；应写 enters from the left edge of the frame，而非 left hand。"**

- `left hand` 在模型内部是"左手"语义，但画面里哪只手是左手取决于人物朝向；
- 一旦出现翻转、过肩、俯拍，`left/right` 立刻错乱，模型为了让每个 `hand` Token 都有实体，就**生成了更多的手**；
- **正确做法**：统一用 `the hand entering from the left edge of the frame` / `the hand near the red grip on the upper end of the bar` / `both hands, one at each end of the bar` 这类**屏幕空间坐标 + 物体锚点**描述。

### 误用 3：把"找事做"写成第二件实体道具
活人感体系里"手里有事做"在**短剧/口播**里是对的，但在**长条/大件商品带货**里会直接造成双任务冲突。

- 正确做法：**"找事做"必须绑定在商品本身上**——用拇指摩挲红色握把纹理、用袖子擦一下灯面、把脚座转半圈、把电源线绕一整圈。
- 禁止：在拿商品的同时拿抹布/扳手/咖啡杯/手机。

### 误用 4：缺少「产品结构锁」与「单实例锁」
- **结构锁**：只在首行写 `<Picture 1>` 对齐是不够的。必须在 `integrated_multimodal_description` 里**逐项复述可见结构**（颜色、材质、按键数量与位置、是否有旋钮、端头形状、线缆颜色），并声明"全片保持不变"。
- **单实例锁**：必须在段落里声明"画面中只有 this one unit"，并在切镜时交代它**从哪来、到哪去**（"从机舱上取下并握在手里"），否则就会分身。

### 误用 5：摄影棚美化词污染真实感
`cinematic, warm bokeh, gentle background roll-off, shallow depth of field, cozy lighting, glossy paint` 这些词会把画面推向**广告/电影 CG 质感**，正是"假"的主要来源。

- 反制词必须是：`raw unedited phone footage, deep depth of field keeping the whole garage in focus, flat cool-white fluorescent overhead light, no color grading, ordinary cluttered background`。

---

## 四、根因总结（一句话版）

> **这版视频"假"的根源不是模型不行，而是提示词在四件事上违背了 H3 的工作方式：**
> **① 在正向段写否定词（越禁止越多生）；② 用 left/right hand 而不是屏幕坐标（越描述越乱）；③ 让两只手干三只手的活（物理上不可能，模型只能造手）；④ 不给产品结构锁与单实例锁（产品自由变形、分身）。**

---

## 五、修复后的通用铁律（已写入 SKILL.md 第一部分）

### 铁律 A：正向段零否定词
- 正向段（`integrated_multimodal_description` / Master Prompt）**禁止出现**：`no / not / without / never / zero / avoid / except / rather than`。
- 所有禁止项**只放进 NEGATIVE PROMPT**。

### 铁律 B：只手任务守恒（Hand-Task Occupancy Law）
- 每个时刻，画面里**最多两个手部接触点**。
- 大件 / 长条商品必须用「**先放置 → 松手 → 再操作**」的三段式时间链：
  `Both hands press the bar onto the metal panel; the hand on the left end releases and exits the frame; a single hand at the red grip presses the small square button with its index finger.`
- 小件商品必须用「**单手握持 + 单手操作**」：`A single hand holds the red grip; an index finger on that same hand presses the small button.`
- 一只手既握产品又按按键时，**明确写"同一只手的食指"**，不要写"另一只手"。

### 铁律 C：屏幕坐标 + 物体锚点
- 统一使用 `the hand entering from the left edge of the frame` / `the hand near the red grip on the upper end of the bar` / `both hands, one at each end of the bar`。
- **禁止**使用 `left hand` / `right hand`。

### 铁律 D：产品结构锁 + 单实例锁
- 结构锁：逐项复述颜色、材质、按键数量/形状/位置、端头、线缆，并写 `this exact structure stays identical in every shot`。
- 单实例锁：`there is exactly one unit of <Picture 1> in the entire video`，并在切镜交代来去。

### 铁律 E：去糖水片 = 原生手机直出
- 统一句式：`Raw unedited vertical phone footage, deep depth of field with both the subject and the background remaining sharp, flat cool-white fluorescent ceiling light with no colored fill light, untouched skin with visible pores and natural redness, no color grading, no background bokeh.`
- 负面段：`cinematic lighting, warm bokeh, orange rim light, shallow depth of field, color grading, glossy plastic, wax skin, oily forehead`。

### 铁律 F：表情去夸张化
- 禁止 `big happy smile / excited / laughing loudly / amazed expression`。
- 统一：`a calm everyday expression, brief closed-lip acknowledgment, natural blink, small nod`。
- 每个镜头最多允许 1 次表情变化。

### 铁律 G：台词 = 秒数 × 2.5 词（口型不崩）
- 3.5 秒镜头最多 8~9 个英文单词；超过必须拆镜头。

### 铁律 H：Soundscape 只写 2~4 句非重复环境底噪
- 禁止写具体撞击事件队列（会机械重复）。
- 统一：`Low steady room tone, faint distant street noise, the quiet hum of the COB light, soft fabric rustle.`（只描述环境与持续声，不列事件）
