# 第二轮病理诊断：产品悬空、幻影重影、蜡人红脸
## （基于 video-task_GepqcBz5O14e2HrPjtHvdiR9fDDZZd5c.mp4 逐帧取证 + 8 张真实产品图）

---

## 〇、先把真实产品结构锁死（8 张实拍图读出的真事实）

真实产品是**可折叠三段式磁吸 COB 工作灯**，不是普通长条灯：

| 结构项 | 真实事实（必须逐项写进结构锁） |
|---|---|
| **整体形态** | **三段可折叠**的长条灯，完全展开约 40cm，折叠后可缩到约 1/3 长度 |
| **两端头部** | 黑色可旋转头，外端面嵌 **两个圆形金属磁吸盘**（银色金属圆片，并排） |
| **背部挂钩** | 两端背部各有一个 **U 形金属丝挂钩**，可折出约 90° |
| **握把** | 两端各一段 **红色软胶握把**，位于磁吸头与灯体之间 |
| **机身** | **哑光黑荔枝纹塑料**，可见折叠铰链分缝与背部注塑凹槽、小圆孔 |
| **正面灯条** | 长条 **COB 灯带（黄白）**，嵌在 **白色半透明凹槽** 内，凹槽上下两端有圆角 |
| **按键区** | 一端有 **一个半透明方形指示窗 + 一个圆形橡胶键 + 一个方形荔枝纹橡胶键** |
| **线缆** | **一根白色 USB 线**，卷绕状 |

> **最关键**：这个产品的固定方式是**磁吸端面 + U 形挂钩**。所以"贴在车上"必须写清 **磁吸面与钢板面的贴合**，否则 H3 会画成"靠近但没接触"= 悬空。

---

## 一、本轮视频的三个硬伤（逐帧证据）

### 硬伤 1：产品虚浮（灵异悬空）

| 时间点 | 画面事实 | 根因 |
|---|---|---|
| 8.0s | 双手只在**顶端磁吸头**处，整根灯**垂直笔直垂进引擎舱**，下 80% 完全无支撑 | 只写了"手拿住"，没写"手握在哪一段、灯的下端在哪" |
| 8.5s | 一只手**指尖轻触 COB 灯带表面**，灯整根**垂直悬在空中**，没有任何支撑 | 写了"hand presses the button"，没写"这只手同时握着灯" |
| 9.0–11.0s | 灯**完美垂直、零摆动**，像被钉在空中 | 真实悬挂物必然有微小摆动；零摆动 = 视觉上被判为悬空 |
| 全片 | 灯与引擎盖、车内饰之间**没有任何一条接触线** | 没写磁吸面与钢板面的贴合，H3 画不出接触 |

**结论**：悬空的根因不是"没写拿住"，而是**没写"哪个面压在哪个面上"**。

### 硬伤 2：幻影 / 重影 / 分身

| 时间点 | 画面事实 | 根因 |
|---|---|---|
| 8.5s | 手指划过灯带时，出现**半透明手指残影**拖在灯带上 | 同一镜里"镜头推近"+"手指进入"同时发生 → 两帧被融合 |
| 12.5s | 人物胸前一根灯，**头旁边还飘着另一根断开的灯** | 切镜没做连续态锁，H3 在新位置又生成一根 |
| 13.0s | 手里一根 + 左上角一根，**两根同时存在** | 同上，单实例锁失效 |
| 全片 | COB 灯带亮度不均，边缘发虚 | 写了发光类词，H3 在亮区产生拖影 |

**结论**：幻影有两类——**运动重影**（同镜多动作）与**物体分身**（无连续态锁）。必须分开治。

### 硬伤 3：蜡人红脸（**这是我上一版规则的自伤 bug**）

| 现象 | 我上一版写了什么 | 为什么会这样 |
|---|---|---|
| **两颊明显腮红状红斑** | `natural redness at the edge of the ears` + `uneven middle-aged skin tone` | H3 把 `redness` 直接渲染成**脸部红色色块**，位置从耳朵跑到脸颊 |
| **皮肤零毛孔、像塑料面具** | 只写了 `visible pores`，没写具体位置与纹理 | 抽象词被忽略，H3 回退到默认光滑皮 |
| **眼睛死黑无神** | **完全没写眼睛** | H3 默认不生成虹膜细节与高光 → 这是"蜡人感"的第一判据 |
| 全脸像打了腮红的假人 | 无任何 `no makeup` 约束 | 红色 + 光滑 = 化妆假人 |

**结论（重要）**：**"redness" 这个词是毒药，必须从所有提示词里删掉。** 真实皮肤要靠**毛孔位置 + 细纹 + 痣 + 胡茬 + 眼睛高光**来写，不靠"泛红色"。

---

## 二、新增五条铁律（已写入 SKILL.md）

### 铁律 I：接触面锁定（Contact-Surface Lock）— 治悬空
每个镜头里，产品必须**至少有一个面明确压在/贴在/握在**某个物理面上，并写清接触后的视觉结果。

| 固定方式 | 必须写的接触描述 |
|---|---|
| **磁吸** | `the flat face of the two round steel discs presses flush against the flat underside of the steel hood, the two surfaces touching with no visible gap` |
| **挂钩** | `the U-shaped wire hook hooks over the thin metal lip of the hood edge, the wire lying on the lip` |
| **手持** | `the fingers wrap around the red rubber grip so that the thumb rests on the front face and the fingertips close behind it` |
| **平放** | `the whole bar rests flat on the workbench, its full length in contact with the wood` |

❌ 禁用模糊词：`attaches to` / `snaps onto` / `sticks to` / `mounted on` —— 这些词 H3 只理解成"靠近"。

### 铁律 J：手—物耦合（Hand-Product Coupling）— 治"手飘在旁边"
- 只要画面里有手接触产品，**必须同时写手抓在哪 + 产品相对手的位置**：
  `One hand grips the lower red grip section with the fingers fully closed around it; the bar hangs straight down from that hand, its magnetic head two palm-widths below the fingers.`
- ❌ 禁止单独写 `a hand presses the square button`（会得到"指尖悬空点按钮"）
- ✅ 必须写 `the hand that already grips the middle section lifts its thumb and presses the square button`

### 铁律 K：单动作单运镜（One Action OR One Camera Move）— 治运动重影
- 每个镜头**只能有一个**运动主体：① 镜头动 ② 人物局部动 ③ 产品状态变。**三选一**。
- **手指触碰产品的瞬间，镜头必须 static**：
  `The camera holds a static shot. The hand slowly moves toward the button.`
- ❌ 严禁 `the camera pushes in while the hand presses the button`（必出残影）
- ❌ 严禁在同一句里写两个以上动作

### 铁律 L：悬挂物体微动（Hanging Object Physics）— 治"完美静止=悬空"
- 悬挂、手持、垂落的物体必须有**一次微小物理响应**：
  `The bar swings once by about two degrees on its hook and settles, then stays still.`
- 手持时：`the bar tips very slightly with each small hand movement`

### 铁律 M：去蜡人化面部（De-Wax Face）— 治假脸（**替代上一版的 redness 写法**）
必须用**五个具体锚点**写真实皮肤，且**全篇禁止 `redness / flush / blush / rosy`**：

```
The face has visible pores along the nose and upper cheeks, three faint horizontal lines across the forehead, one small dark mole on the left cheek below the eye, uneven grey and dark stubble along the jaw that has grown for two days, and the skin tone is the same all over the face without any color patches. The eyes have a visible dark iris ring and one small rectangular white catchlight in each eye from the overhead tube. The only shine on the face is a small spot on the bridge of the nose.
```

**五个锚点缺一不可**：① 毛孔位置 ② 细纹 ③ 痣/斑 ④ 胡茬/绒毛 ⑤ **眼睛虹膜 + 高光**
> 第 ⑤ 项是"蜡人感"的第一判据。没写眼睛高光，脸一定是死的。

### 附加 · 灯带不拖影
```
The COB strip is a flat, even white light with a crisp edge, its brightness uniform from end to end, the strip's outline sharp against the black body.
```
❌ 禁用：`glowing / beaming / shining brightly / luminous glow / light rays`（会生成光晕拖影）

---

## 三、连续态锁（治分身，强化版）

每个切镜的第一句必须交代**承接**：

| 上镜结尾 | 本镜第一句必须写 |
|---|---|
| 产品吸在机盖上 | `The same single bar is still stuck to the hood where it was, and the camera now looks at it from a lower angle.` |
| 产品在手里 | `The same single bar is still in the same hand, held in the same way.` |
| 产品放桌上 | `The same single bar still lies flat on the bench in the same position.` |

**加一句总锁**：
```
There is exactly one unit of this product in the whole video. It never appears twice in the same frame and it never appears in two different places at once.
```

---

## 四、本轮验收标准（生成后逐条对照）

| # | 检查项 | 通过标准 |
|---|---|---|
| 1 | 产品是否有接触点 | 每镜都能指出"产品的哪个面压在哪" |
| 2 | 有无悬空 | 无任何一帧产品凭空静止在空中 |
| 3 | 有无残影 | 手指/产品边缘无半透明重影 |
| 4 | 有无分身 | 任何时刻画面里只有一根灯 |
| 5 | 脸颊有无红块 | 两颊无腮红状色块 |
| 6 | 眼睛有无高光 | 每帧眼睛里有小方形高光点 |
| 7 | 手是否为"抓住" | 手指包住握把，不是指尖悬空 |
| 8 | 悬挂物有无微动 | 挂好后有约 2° 摆动并停住 |
