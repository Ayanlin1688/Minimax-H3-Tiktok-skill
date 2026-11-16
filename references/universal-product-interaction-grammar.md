# 通用商品交互语法库（Universal Product Interaction Grammar）
# 适用所有品类：不管卖的是长条灯、折叠风扇、保温杯还是吸尘器，都能按本规范写出「物理上只用两只手」的交互动作。

---

## 〇、先定义商品形态档位（Form Factor Tier）

写任何动作之前，先判定商品属于哪一档。**档位决定了这个商品能不能单手拿、能不能边拿边操作。**

| 档位 | 典型商品 | 尺寸特征 | 单手可握？ | 必须遵守的交互语法 |
|---|---|---|---|---|
| **T1 微型** | 指甲刀、口红、耳钉、小样 | < 10cm | ✅ 完全可握 | 单手握持 + **同手拇指/食指**操作 |
| **T2 小型** | 保温杯、手机支架、手持风扇、充电宝 | 10–18cm | ✅ 可握 | 单手握持 + **另一只手**食指操作（允许，因握持稳固） |
| **T3 中型** | 折叠四头风扇、抽真空机、小型吸尘器 | 18–35cm | ⚠️ 可短暂握持 | 单手握持可选，但**操作前必须先放置或夹持固定** |
| **T4 长条形 / 大件** | 长条检修灯、伸缩杆、拖把、落地扇 | > 35cm 或长宽比 > 4:1 | ❌ 不可单手稳握 | **必须先放置/悬挂/夹持固定 → 松手移出画面 → 再单手操作** |
| **T5 超大件** | 后备箱收纳箱、行李箱、折叠椅 | 需双臂抱持 | ❌ 需双臂 | **只做抱持 + 放置 + 拍打，所有操作在放置完成后进行** |

> **判定规则**：商品最长边 ÷ 掌宽（约 8cm）≥ 4.5，或最长边 > 35cm，一律按 T4 处理。
> 判定错误是「第三只手」的第一大来源。

---

## 一、四类安全交互模板（可直接抄进提示词）

### 模板 1：TABLE-PLACE（放置后操作）— 适用于 T3 / T4 / T5
```text
The presenter sets the <product> down flat on the <surface>. Both hands pull away from the product and exit the frame. A single hand then enters from the right edge of the frame, its index finger pressing the small square power button while the fingertips of the same hand rest on the black body of the unit. The product stays motionless on the surface.
```
> 手部接触点：放置时 2 个 → 操作时 1 个。永不超 2。

### 模板 2：HANG-LOCK（挂载固定后操作）— 适用于 T4 长条灯、挂钩类
```text
Both hands raise the bar and press its rear clips onto the metal edge of the open hood until it clicks into place. The two hands release and pull back out of the frame. The bar hangs from the hood on its own. A single hand then enters from the lower left of the frame and its index finger presses the small switch beside the LED strip.
```
> 手部接触点：安装时 2 个 → 松手后 0 个 → 按键时 1 个。

### 模板 3：ONE-HAND-HOLD（单手握持 + 同手操作）— 适用于 T1 / T2
```text
A single hand grips the middle of the <product>. The thumb of that same hand presses the round button on its top face twice. The product remains in the frame, with the other hand of the presenter out of frame the entire time.
```
> 手部接触点：全程 1 个。

### 模板 4：HOLD-AND-RELEASE（双人交接）— 适用于需要第二个人的场景
```text
The presenter holds the bar at its red grip with a single hand. A second person standing at the right edge of the frame takes the other end of the bar with a single hand. The bar runs across the frame between the two people, each with exactly one hand on it.
```
> 手部接触点：2 个人 × 各 1 手 = 2 个。

---

## 二、绝不允许的动作清单（Any tier）

| 危险写法 | 后果 | 改写为 |
|---|---|---|
| `holds the bar with both hands and presses the button` | **必出第三只手**（2 手已占满，还要按） | 「两手持 → 放置/悬挂 → 松手 → 单手按」 |
| `holds the unit in one hand while wiping the hood with the other` | 商品反重力悬空 + 手部混乱 | 「先擦完 → 再拿商品」或「把商品放稳 → 再擦」 |
| `holding the flashlight and the rag` | 手部任务冲突、道具乱飞 | 拿产品时手里**不再有任何其他道具** |
| `hands adjusting multiple fan heads simultaneously` | 多手/扇叶融合畸变 | 「one hand rotates one fan head at a time」 |
| `quickly flips the product around` | 切镜间产品变形 | 「slowly turns the unit so the back panel faces the camera」 |

---

## 三、手部描述规范：屏幕坐标 + 物体锚点（禁止 left/right hand）

H3 官方规范要求使用**画面可见的几何坐标**，不要用抽象解剖部位。

### ✅ 推荐写法
- `the hand entering from the left edge of the frame`
- `the hand at the lower right of the frame`
- `a single hand gripping the red grip at the upper end of the bar`
- `two hands, one gripping each red end of the bar`
- `the index finger of the hand that holds the grip`

### ❌ 禁止写法
- `left hand` / `right hand`
- `his other hand`
- `a third hand` / `an extra hand`（哪怕写在否定句里也不行）

---

## 四、产品结构锁（Structure Lock）通用模板

每次生成都必须把**参考图里真实存在的结构**逐项复述一遍，否则 H3 会自由发挥造成"货不对板"（平台会判商品不符）。

```text
<Product structure lock>
The product is a slender black matte-plastic bar light roughly forty centimeters long. Each end is capped with a bright red soft-rubber grip. The long face carries one continuous COB light strip in yellow and white inside a black frame. Two small rectangular rubber buttons sit on the upper side, one above the other. The back panel is one molded matte-black plate with two U-shaped hanging slots. A single white USB cable lies coiled beside it.
This exact structure, color placement, button shape and count, and surface finish stay identical in every single shot.
```

### 结构锁检查项（缺一项就容易变形）
1. **整体比例**：长宽比是多少，和手掌比是几倍
2. **颜色分布**：哪一段是什么颜色（不要说"红色点缀"，要说"两端红色、中段黑色"）
3. **按键**：有几个、什么形状、什么位置（圆形旋钮 vs 方形按键是最容易搞混的）
4. **端头形状**：是否有脚座、是否可转动、是否有卡扣凸起
5. **线缆**：颜色、是否可见、是否卷绕
6. **表面工艺**：哑光 / 亮面 / 磨砂 / 拉丝

---

## 五、单实例锁（Single-Instance Lock）通用模板

```text
There is exactly one unit of this product in the entire video. It is never duplicated. When the shot changes, the same unit is physically carried over from the previous position: it is unhooked from the hood and held in hand, or it stays where it was mounted and the camera simply moves.
```

> 判定口诀：**每个切镜必须能回答"这件东西是从上一镜哪来的"**。答不上来就会分身。
