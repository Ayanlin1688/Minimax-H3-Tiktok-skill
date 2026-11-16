# 全品类扩展语法库（Category Extension Grammar）
# 在 T1–T5 形态档位与八大铁律之上，为 8 大真实带货品类补齐专属交互语法。
# 每个品类都给出：专属翻车风险 → 专属语法 → 可直接抄进提示词的模板。

---

## 品类路由表（C1–C8）

| 代号 | 品类 | 核心交互动词 | 专属风险 |
|---|---|---|---|
| **C1** | 日用百货（收纳、清洁、厨房小工具） | 开合 / 收纳 / 按压 / 擦拭 | 无 |
| **C2** | 美妆个护（护肤、彩妆、个护电器） | 涂抹 / 按压 / 旋转 / 照镜 | 皮肤质感、指尖形变 |
| **C3** | 车载汽配（车灯、支架、风扇、应急品） | 卡扣 / 吸附 / 插拔 / 旋转 | 车标侵权、假发动机舱 |
| **C4** | 时尚配件（墨镜、腰带、包、首饰、手表） | 佩戴 / 扣合 / 举起 / 转动 | 镜面反光、金属倒影 |
| **C5** | 穿戴（服装 / 鞋 / 包 / 眼镜） | 上身 / 走动 / 转身 / 脱下 | **无握持动作，T 档位失效** |
| **C6** | 食品饮料与清洁消耗品 | 倾倒 / 咀嚼 / 喷洒 / 擦拭 | **液体悬浮、喷射穿帮** |
| **C7** | 强反光与透明材质（玻璃 / 镜面 / 屏幕 / 镀铬） | 举向光源 / 转动展示 | **假倒影、假透视** |
| **C8** | 多人协作品（婴儿车 / 健身器械 / 双人工具） | 协同握持 / 交替操作 | **手部归属混乱** |

> 使用顺序：先判 **T 档位**（尺寸决定单手能否边拿边按）→ 再判 **C 品类**（决定交互动词与专属语法）→ 最后套八大铁律。

---

## C1 · 日用百货（收纳 / 清洁 / 厨房小工具）

### 专属语法：开合状态必须显式声明
收纳、密封、折叠类商品最大的翻车是**状态跳变**（上一秒关着，下一秒开着，中间没有"打开"的动作）。

**模板**
```
The lid is fully closed and lying flat on the counter. A single hand enters from the right edge of the frame, its index finger pressing the rear latch until it clicks. The lid swings open on its hinge in one continuous motion and stops at a forty-five degree angle. The open state holds for the rest of the shot.
```

### 检查点
- 每个镜头开始时，商品处于**什么状态**（开 / 关 / 折叠 / 展开）
- 状态变化必须有**中间动作**（按压 → 弹开 → 停在角度）
- 折叠类：写明**折叠后的厚度与方向**

---

## C2 · 美妆个护（护肤 / 彩妆 / 个护电器）

### 专属语法 1：皮肤质感是本品类的主战场
美妆类**必须正面描述真实皮肤**（不能靠否定词），且描述要**更细**：
```
Untouched forearm skin with visible fine hair, faint goosebump texture, natural unevenness along the inner wrist, small dry patches near the elbow.
```

### 专属语法 2：指尖动作 = 指腹接触，不用指甲尖
```
The pad of the index finger presses a small amount of cream onto the back of the other hand and spreads it in one slow stroke.
```

### 专属语法 3：涂抹类必须写"用量 + 轨迹 + 终点"
```
A pea-sized amount is pressed at the center of the back of the hand, drawn once toward the wrist, and stops at the wrist bone.
```

### 翻车黑名单
| ❌ | ✅ |
|---|---|
| `a lot of cream spreads smoothly` | `a pea-sized amount is drawn once toward the wrist` |
| `her skin becomes glowing and flawless` | `the skin looks slightly damp where the cream sits, then dries to a matte finish` |
| 手指在脸上快速揉搓 | `two fingertips press once and hold for a beat` |

---

## C3 · 车载汽配（车灯 / 支架 / 风扇 / 应急品）

### 专属语法 1：车辆必须中性化（合规硬性）
```
an American pickup truck / a modern crossover SUV / a compact sedan
```
**严禁**出现 Ford / Tesla / BMW / Toyota 车标特写。

### 专属语法 2：安装位必须具体到"哪个物理结构"
```
the metal lip along the front edge of the open hood
the round air vent louver on the passenger side of the dashboard
the metal cross bar of the roof grab handle above the rear door
the cup holder recess in the center console
```

### 专属语法 3：机舱/座舱只写"真实可见的脏与旧"
```
The engine bay is dusty, with faint oil film near the valve cover and dried leaves caught in the cowl gap. The dashboard plastic is slightly sun-faded.
```
> 写"干净得像展厅"会被渲染成 CG。

### 检查点
- 安装动作是否遵循「固定 → 松手 → 单手操作」
- 是否出现**第二件同类商品**（车配最常见分身）
- 车标是否被中性化

---

## C4 · 时尚配件（墨镜 / 腰带 / 包 / 首饰 / 手表）

### 专属语法 1：金属与镜面反射必须锚定真实环境
```
The chrome frame of the sunglasses reflects the horizontal window blinds of the room, the outline of the ceiling tube, and the edge of the worn wooden table. The reflection content matches the room behind the camera.
```

### 专属语法 2：佩戴类动作走「双手举起 → 落位 → 单手调整」
```
Both hands raise the sunglasses to eye level; both hands place the temples over the ears; one hand then pushes the bridge up one centimeter.
```

### 专属语法 3：细链条/细带类必须写"重力形态"
```
The thin chain hangs down under gravity and swings once, then settles.
```

---

## C5 · 穿戴类（服装 / 鞋 / 包 / 眼镜）—— T 档位失效，需专属语法

> **关键**：穿戴类商品**没有"握持"这个动作**，T1–T5 完全失效。必须改用**身体锚点**描述。

### 专属语法 1：用身体部位 + 屏幕坐标定位，不用"手拿着"
```
The jacket sits on the shoulders. The collar rests against the back of the neck. The sleeve ends exactly at the wrist bone of the hand that enters from the left edge of the frame.
```

### 专属语法 2：上身动作三段式
```
Both hands lift the jacket behind the back; both arms slide into the sleeves one after the other; both hands pull the front panels together and the zipper closes from bottom to top in one stroke.
```

### 专属语法 3：走动镜头必须写"步频 + 摆幅 + 落地"
```
The person walks toward the camera at a slow steady pace, taking three steps across the frame. The hem of the jacket swings slightly in time with each step and settles when he stops.
```

### 检查点
- 是否完全不再出现"单手/双手握持商品"
- 每个动作是否挂在与身体的实际接触上（肩、颈、腰、腕、脚）
- 走动镜头是否有步数与摆幅

---

## C6 · 食品饮料与清洁消耗品 —— 流体物理专属语法

> **关键**：AI 最大的翻车是**液体悬浮、喷射穿帮、液面高度不变**。

### 专属语法 1：倾倒必须先建立"液面 + 容器姿态 + 终点"
```
The bottle tilts forward forty degrees. The liquid forms one continuous stream from the rim and lands inside the glass, which is already filled to one third. The liquid level inside the glass rises to two thirds by the end of the shot and the stream stops when the bottle returns upright.
```

### 专属语法 2：喷洒必须写"喷头朝向 + 雾形 + 落点"
```
The nozzle points at the stainless surface from twenty centimeters away. A short burst leaves a fine mist that spreads into a patch about the size of a hand and settles on the metal without dripping.
```

### 专属语法 3：清洁类涂抹必须写"施力方向 + 污渍变化"
```
The cloth presses onto the stain and moves in one stroke from left to right. The dark smear lifts into the cloth and the metal underneath becomes visibly clearer along that stroke.
```

### 专属语法 4：进食/饮用（如涉及）
```
The person takes a small sip, the liquid level in the cup drops visibly by a few millimeters, and they set the cup back down on the saucer.
```

### 翻车黑名单
| ❌ | ✅ |
|---|---|
| `pours the drink` | `tilts forward forty degrees, one continuous stream, level rises from one third to two thirds` |
| `sprays the surface` | `short burst, fine mist, patch the size of a hand, settles without dripping` |
| `cleans the stain quickly` | `presses, one stroke left to right, smear lifts, metal clearer along that stroke` |

---

## C7 · 强反光与透明材质（玻璃 / 镜面 / 屏幕 / 镀铬）

> **关键**：AI 会给这些材质编造**不存在的倒影**，这是"一眼假"的重灾区。

### 专属语法 1：反射内容必须逐一锚定为真实环境物
```
The glass carafe reflects the vertical white edge of the window frame on its left side and the round ceiling light on its upper right. The chrome ring around its neck reflects the horizontal seam of the tiled wall. Every reflected shape corresponds to an object that physically exists in this kitchen.
```

### 专属语法 2：透明物体的"透视"必须写清背后是什么
```
The clear bottle is transparent enough to show the vertical black line of the counter seam passing behind it, slightly bent at the bottle's curved edge.
```

### 专属语法 3：屏幕类必须写"非内容态"
```
The phone screen stays dark and reflects only the blurred rectangle of the ceiling light; the display shows no icons or text.
```
> 屏幕一旦要求显示内容，几乎必出乱码文字，直接违反纯净原片规则。

### 检查点
- 每个反射是否指向画面里真实存在的物体
- 透明件背后是否有具体可辨的物体
- 屏幕是否强制为暗态/无内容

---

## C8 · 多人协作品（婴儿车 / 健身器械 / 双人工具）

> **关键**：多人同框时手部归属最容易乱，必须**逐人计数**。

### 专属语法 1：每人独立计数
```
Person A at the left edge of the frame holds the left handlebar with exactly one hand. Person B at the right edge of the frame holds the right handlebar with exactly one hand. No person touches the product with more than one hand at any time.
```

### 专属语法 2：交替操作（一人松手，另一人接）
```
Person A releases the handlebar and steps back out of the frame. Only then does Person B's second hand come up from below and press the folding latch.
```

### 专属语法 3：健身器械必须写"配重 + 行程"
```
The cable is pulled downward in one steady stroke until the weight stack rises by three plates and the handle reaches chest height, then it returns under tension.
```

### 检查点
- 画面里有几个人
- 每人分别有几个手部接触点（总数可 >2，但**每人必须 ≤2**）
- 松手与接手的先后顺序是否显式写出

---

## 品类 × 档位速查（写提示词前的第一步）

| 您的品类 | 常见档位 | 关键 C 规则 |
|---|---|---|
| 日用百货 | T2–T4 | C1 状态显式声明 |
| 美妆个护 | T1–T2 | C2 皮肤正向细描 + 指腹接触 |
| 车载汽配 | T3–T4 | C3 中性车名 + 具体安装位 + 真实脏旧 |
| 时尚配件 | T1–T2 | C4 反射锚定 + 重力形态 |
| 穿戴 | —（T 失效） | C5 身体锚点 + 三段式上身 |
| 食品饮料/清洁 | T2–T3 | C6 液面/雾形/施力方向 |
| 玻璃/镜面/屏幕 | T1–T3 | C7 反射锚定 + 屏幕暗态 |
| 多人协作 | T4–T5 | C8 逐人计数 + 交替操作 |
