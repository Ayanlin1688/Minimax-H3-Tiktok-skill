# 穿模诊断与前三秒钩子修复（Clipping & 3-Second Hook）
## 基于香水 + 汽修灯两条视频逐帧取证

---

## 一、穿模取证（两条视频都存在）

### 香水（透明玻璃瓶，最严重）
| 时间点 | 画面事实 |
|---|---|
| 1.0–2.0s | 手指按下时**指腹穿进玻璃瓶身**，指尖从瓶壁内侧透出 |
| 3.5–4.5s | 手掌托瓶，**四根手指与瓶身互相穿插**，玻璃上能看到手指"嵌进去"的轮廓 |
| 9.5s | 拇指压住瓶身，**拇指边缘消失在玻璃内部** |

### 汽修灯（不透明塑料，仍然穿模）
| 时间点 | 画面事实 |
|---|---|
| 7.5–9.5s | 手掌抓红色握把时，**手指越过握把轮廓压进灯体** |
| 10.0–11.5s | 拇指压在灯面，**指节与灯壳边界融合** |
| 12.5s | 手指抓握处，**灯体边缘从手指中间穿过** |

### 根因（三条）
1. **只写了"手抓住握把"，没写"遮挡关系"** —— H3 不知道谁在前面
2. **没写"产品表面是连续完整的"** —— 模型允许产品表面在手指处断裂
3. **透明材质没有专门规则** —— 玻璃/亚克力会让模型把手画在瓶内（因为"看得见"）

---

## 二、新增铁律 Y：穿模防护（Intersection Lock）

### 通用句式（每个手接触产品的镜头都要写）
```
The surface of the product stays continuous and unbroken where the hand touches it. The fingers wrap around the outside of the grip and the grip's outline remains visible along the edge of each finger; no fingertip, knuckle or nail appears on the inside of the product body. Where a finger crosses in front of the product, the finger covers that part of the product and the product's edge stops at the finger.
```

### 透明 / 玻璃 / 亚克力 / 玻璃瓶专属句式
```
The bottle is made of clear glass and the hand touches only its outside. The fingers are visible through the glass as slightly darker, slightly shifted shapes behind the glass wall, and the glass wall itself stays intact as a continuous curved surface in front of them; the fingers never enter the body of the bottle and the liquid never touches a finger.
```

### 不透明塑料/金属专属句式
```
The casing is opaque matte plastic and the hand wraps it from outside. Along the edge where the fingers meet the casing, the casing's corner stays sharp and unbroken; the fingers sit on top of the surface and follow its curve.
```

### 负向提示词追加（必须）
```
clipped fingers, fingers through object, hand inside product, intersecting geometry,
fingers merged with product, fingertip inside bottle, hand penetrating surface,
product and hand fused, fingers overlapping product outline, liquid touching fingers,
broken product silhouette, impossible grip
```

### 自检口诀
> **每一帧都要能回答："这根手指是在产品前面，还是后面？"**
> 答不出来，就是穿模。

---

## 三、新增铁律 Z：前三秒钩子（3-Second Hook）

### 问题取证
两条视频的 0–3 秒都是**人物站着/坐着看镜头说话**，产品只是被举着或放在桌上。
- 香水 0–3s：坐在桌前说话，瓶子在桌上
- 汽修灯 0–3s：举着灯对镜头说话

**没有任何"必须看下去"的理由** —— 观众在 1.2 秒内就滑走了。

### 合格的 3 秒钩子必须满足三件事
| 要素 | 说明 |
|---|---|
| **① 有物理动作在进行中** | 不是"准备开始"，而是"已经做到一半" |
| **② 有一个可见的困难/反差/意外** | 观众想知道"后来怎样了" |
| **③ 产品在第一秒内已入画** | 不能等到第 4 秒才出现 |

### 六种可直接套用的 3 秒钩子模板

**H1 · 做到一半卡住（最通用）**
```
At 00:00.000 the action is already half done: his hand is pushing the bracket onto the hood edge and it has stuck at an angle, not seated. He pushes again with the heel of his hand. It slips off. He exhales through his nose.
```

**H2 · 结果先出现，原因后揭示**
```
At 00:00.000 the shot opens on a finished result that does not make sense yet: the whole engine bay is lit up flat white from a light the viewer cannot see the source of. The camera tilts down and reveals the bar stuck to the underside of the hood.
```

**H3 · 别人先否定**
```
At 00:00.000 a second person's hand comes into frame and pushes the product back across the table, and his voice says it looks like the cheap ones. The main subject picks it up again without answering.
```

**H4 · 意外发生**
```
At 00:00.000 the product slips out of his hand and drops onto the bench with a hard clack. He freezes. Then he picks it up and turns it over to look at the corner that hit.
```

**H5 · 极端对比同框**
```
At 00:00.000 both objects are already in frame side by side on the bench: the old cracked one on the left and the new one on the right, and his hand hovers between them before picking up the new one.
```

**H6 · 身体状态先出卖一切**
```
At 00:00.000 he is already sweating, shirt stuck to his back, one hand fanning himself. Then his other hand reaches off-frame and brings the product in.
```

### 钩子的写法硬规则
- **第一句必须是正在进行的动作**，不能是 `He stands and looks at the camera`
- **禁止**开头写场景交代、禁止开头写人物介绍
- 产品必须在 `At 00:00.000` 这一句里或紧接一句内出现
- 前 3 秒内**最多一句台词**，且必须短（≤6 词）

---

## 四、新增铁律 AA：人物有事可干（Occupied Task）

### 问题
- 香水：全程坐着说话，手在空中比划，没有实质动作
- 汽修灯：举着灯说话，没有真实操作

### 规则
**每一个镜头，人物必须有一个"看得见的物理任务"，且任务必须有可见的进展或阻力。**

| 场景类型 | 可用的"事" |
|---|---|
| 客厅/卧室 | 整理沙发靠垫、卷起毯子、把快递箱拆开、给植物浇水、擦茶几 |
| 厨房 | 擦台面、拧开罐子、把碗摞起来、拉抽屉找东西 |
| 车库 | 拧螺栓、擦手、把工具归位、撑开机盖、搬箱子 |
| 洗衣房 | 从烘干机里掏衣服、叠衣服、往洗衣机里塞 |
| 后院 | 收晾衣、搬花盆、拉水管 |
| 车内 | 调整后视镜、插充电线、清空杯架 |

**写法要求**：
```
He is not performing for the camera. He is in the middle of <task> when the shot starts, and he keeps doing it while he talks. <task> visibly progresses during the shot: <具体进展>.
```

**禁止**：
- ❌ 人物站着不动只说话
- ❌ 人物手在空中比划（无实物）
- ❌ 人物把产品举在胸前对着镜头展示（这是广告姿势，不是生活动作）

---

## 五、环境规则升级：原生美国家庭场景

### 问题取证
香水视频的场景是：暗调房间 + 桌上一堆金色链条/眼镜/文件/水杯 → 像二手摊，不像家庭。
人物穿细吊带背心在暗光下 → 观感与"家庭带货"不符。

### 规则：必须从"美国家庭真实场景库"里选，且写清光线来源

| 场景 | 光源 | 典型杂物（5–8 件） |
|---|---|---|
| **厨房台面** | 窗外日光 + 头顶筒灯 | 洗碗海绵、洗洁精瓶、晾着的杯子、超市传单、钥匙、水果篮、咖啡机 |
| **客厅沙发区** | 落地窗日光 + 顶灯 | 靠垫、毯子、遥控器、拖鞋、儿童玩具、快递箱、杂志 |
| **洗衣房** | 一支日光灯管 | 洗衣篮、半袋洗衣粉、散落的袜子、熨斗、衣架 |
| **家用车库** | 卷帘门半升的日光 + 顶灯管 | 工具箱、抹布、油漆桶、自行车、割草机、纸箱 |
| **餐桌** | 餐桌吊灯（暖）+ 窗光（冷） | 餐垫、盐罐、未收的杯子、信件、眼镜、钥匙盘 |
| **后院露台** | 自然天光 | 折叠椅、浇水壶、花盆、烧烤夹、狗绳、拖鞋 |

### 必须写的光线句（美国家庭室内真实光线特征）
```
Light comes from two sources that do not match: cool daylight through the window on one side, and a warmer ceiling fixture overhead. The two colours meet on the wall behind him as a soft gradient. Nothing else lights the scene.
```

### 禁止
- ❌ 暗调艺术化布光（像影棚/像广告）
- ❌ 桌面堆满与产品无关的"装饰性道具"（金色链条、艺术摆件）
- ❌ 人物着装与家庭场景不符（细吊带在车库）

---

## 六、产品一致性（防变形）

### 问题取证
- 香水：瓶高在 0–2s 高、2.5s 变矮、3.5s 又变高；标签文字 "VOYAGE NOVA" 忽隐忽现；液体颜色深浅变化
- 汽修灯：折叠态/展开态反复切换；顶部磁吸头有时是双圆盘、有时变成黑色夹子

### 规则
每个切镜第一句必须重申**三条不变项**：
```
The same single unit is still here, unchanged: the same overall length, the same proportions, the same cap and the same colour of the liquid inside. Its size relative to his hand has not changed.
```

**必须锁定的五条**：
1. 总长度（相对手掌几倍）
2. 比例（长宽比）
3. 端头/盖子形状
4. 液体/内容物的颜色与液面高度
5. 相对手的大小

**禁止**：
- ❌ 只写 `<Picture 1>` 对齐，不复述比例
- ❌ 让产品在切镜间改变尺寸
