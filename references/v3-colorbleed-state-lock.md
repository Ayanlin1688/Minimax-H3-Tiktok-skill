# 第三轮病理诊断：红脸污染、折叠态错乱、屏显乱码、灯带过曝
## （基于 task_xbYEbXFbjMbZFkdEJYNRLxSSKKzjuvRE.mp4 逐帧取证）

---

## 一、本轮已经修好的（对比前两轮）

| 项目 | 上一轮 | 本轮 | 结论 |
|---|---|---|---|
| **第三只手** | 出现 3–4 只手 | **全片最多 2 只手，逐帧核对无第三只手** | ✅ 铁律 B + D + J 生效 |
| **产品分身** | 手里一根 + 旁边飘一根 | **全片只有一根灯，无分身** | ✅ 铁律 F 连续态锁生效 |
| **手飘在物体旁** | 指尖悬空点按钮 | **手掌包住红色握把，握持真实** | ✅ 铁律 J 手—物耦合生效 |
| **产品颜色/按键** | 橙色握把 + 圆形旋钮 | **红色握把 + 圆键 + 方键 + 指示窗** | ✅ 结构锁生效 |
| **眼睛死黑** | 无高光 | **可见虹膜环与小高光点** | ✅ 铁律 M 部分生效 |
| **产品悬空** | 完全凭空垂直悬着 | **顶部有可见接触点，不再凭空悬浮** | ⚠️ 改善但未彻底 |

> **这一轮证明：规则是有效的。** 剩下三处需要继续钉。

---

## 二、本轮仍未解决的四类问题（逐帧证据）

### 硬伤 A：整张脸被"染红"（最严重，新根因）

| 时间点 | 画面事实 |
|---|---|
| 0.0–3.0s | 右脸颊与鼻周出现**大片鲜红斑块**，像晒伤/红漆 |
| 12.0–14.5s | **整张脸变成暗红色**，额头、两颊、下巴全是红，像戴了红色面具 |

**根因（本轮新发现，之前没识别到）**：
```
画面里有一个高饱和度的鲜红色产品（红色软胶握把），
而且它被举在脸部旁边、占据画面很大面积。
H3 的全局颜色注意力会把这块饱和红"渗"到相邻的皮肤上，
不是因为我们写了 redness —— 而是产品颜色本身的污染。
```

> **这解释了为什么删掉 `redness` 之后脸还是红的**：毒词清干净了，但**产品颜色污染没治理**。

**治法**：新增**异色污染隔离铁律**。正向写出"皮肤保持自身色调，不受旁边红色握把影响"，并把它写进每一镜的光影描述里。

### 硬伤 B：产品被画成"折叠态"，与真实使用状态不符

| 时间点 | 画面事实 |
|---|---|
| 1.5s / 12.5s | 灯只有约 20cm，**明显处于折叠/半折叠状态**，不是完全展开的 40cm |
| 全片 | **U 形金属丝挂钩从未出现**，真实产品两端背部各有一个 |

**根因**：结构锁里虽然写了"三段可折叠"，但**没写"本片使用状态 = 完全展开并锁定为一条直线"**。H3 读到 "foldable" 就自由决定折叠程度。

**治法**：新增**展态锁定铁律** —— 必须显式声明"完全展开、三段成一条直线、两个铰链缝平直闭合"。

### 硬伤 C：产品小屏显被画成乱码数字

| 时间点 | 画面事实 |
|---|---|
| 8.0s / 10.0s | 指示窗显示 **"183"**；后续帧变成 "188"、"88" 等不一致的乱码 |

**根因**：真实产品那个位置是**电池电量小屏**。一旦提示词或参考图里出现可读数字，H3 会强行渲染数字并必然写错。

**治法**：新增**小屏显规则铁律** —— 写成"未点亮的深色矩形窗，内部无可读数字或字母"，彻底不要求模型渲染数字。

### 硬伤 D：灯带过曝爆白 + 边缘细节丢失

| 时间点 | 画面事实 |
|---|---|
| 9.0–11.5s | COB 灯带变成**纯白一片、边缘完全消失**，白色凹槽边框也看不清了 |

**根因**：只写了"平亮均匀白"，没写**曝光上限与边框可辨**。H3 在亮区直接爆掉。

**治法**：写"灯带明亮但边缘仍可辨，白色凹槽边框与黑色机身之间的分界线始终可见"。

### 附加硬伤 E：构图与穿模

| 时间点 | 画面事实 |
|---|---|
| 1.5s | **人物头部被挤到画面右边缘并被裁切**，头与灯挤在一起 |
| 4.5s | 灯的下端**插进了发动机进气歧管区域**（穿模） |
| 5.0s / 7.5s | 画面边缘出现**孤立的小黑色残块**（悬挂的碎片） |

**治法**：新增构图规则 —— 头部完整入画且头顶留空隙；产品末端与背景部件留至少一个掌宽间距；画面四边只允许出现指定元素。

---

## 三、新增四条铁律（写入 SKILL.md）

### 铁律 N：异色污染隔离（Color-Bleed Isolation）
**当产品含高饱和颜色（鲜红/亮黄/荧光绿）且靠近人物皮肤时，必须写：**

```
The red rubber grips are saturated and vivid, but their color stays on the grips; the skin keeps its own uniform natural tone with no red or pink cast bleeding onto the face, the neck or the hands.
```

- 同时在 `overall_soundscape` 之前的光影句里补一句：
  `The flat white overhead light is neutral, so the red grips beside the face do not tint the skin.`
- ❌ 禁止只写"red grips"而不加隔离句（必然染红整张脸）

### 铁律 O：展态锁定（Open-State Lock）
**可折叠/伸缩/可变形产品，必须显式声明本片使用状态：**

```
The product is fully unfolded and locked open: the three segments form one straight continuous bar with the two hinge seams flat and closed flush, giving its full length of about forty centimeters.
```

- 折叠态只在**专门的折叠演示镜头**里出现，且必须写明"这一段演示折叠过程"
- ❌ 禁止只写 `foldable` 而不声明本片是展开态

### 铁律 P：小屏显与产品文字规则
**产品上任何小显示屏/数字窗/指示灯，一律写成不可读状态：**

```
The small square display window on the body is a dark unlit rectangle with no readable digits or letters inside it.
```

- 参考图里有数字时也只写"一个深色小方窗"，**绝不要求模型渲染具体数字**
- ❌ 禁止写 `showing 88` / `battery percentage display` / 任何具体字符

### 铁律 Q：构图边界与穿模防护
**每镜必须写：**

```
The person's whole head stays inside the frame with clear space above the hair. The lower end of the bar hangs clear of the engine parts, at least one palm-width above the air intake. The four edges of the frame contain only the mechanic, the hood, the bar and the garage behind him.
```

- 头部不得贴边被裁
- 产品末端与背景部件之间留至少一个掌宽
- 画面四边只允许出现指定元素（治边缘孤立残块）

### 补充：灯带曝光上限
```
The COB strip is bright but never blown out: its long edges stay visible and the boundary between the white channel frame and the black body stays crisp along the whole strip.
```

---

## 四、本轮验收标准（22 项自检中的新增 4 项）

| # | 检查项 | 通过标准 |
|---|---|---|
| 19 | 异色污染隔离 | 脸、颈、手无红/粉色渗出；已写隔离句 |
| 20 | 展态锁定 | 产品为完全展开成一条直线；铰链缝平直闭合；只在专门镜头折叠 |
| 21 | 小屏显不可读 | 显示屏写成深色未点亮矩形窗，无任何具体数字 |
| 22 | 构图与穿模 | 头部完整入画留空隙；产品末端与背景留一掌宽；画面四边无孤立残块 |
