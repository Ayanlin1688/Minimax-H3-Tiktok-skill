# 人物随机化特征池（Persona Variation Pool）
## 治「每张脸都长同一个痣」—— 上一版铁律 M 自身造成的 bug

---

## 一、问题确认（逐帧取证）

对比你给的两条视频：

| 视频 | 人物 | 痣的位置 |
|---|---|---|
| 香水（女性主播） | 白人中长发女性 | **左颊下方一颗明显黑痣** + 左嘴角旁一颗小痣 |
| 汽修灯（男性修理工） | 灰白短发白人男性 | **左颊下方同一位置一颗明显黑痣** |

**两个人、两个场景、两个品类，痣出现在同一个位置。**

**根因**：上一版铁律 M 把五锚点写成了**固定清单**，其中第 ③ 项是
> `one small dark mole on the left cheek below the eye`

H3 每次都会照抄这个位置 → **每张脸都有一颗左颊痣**。这是我写死规则造成的。

> 教训：**面部特征一旦写死具体位置，就会成为"模板脸"的标记**。
> 真实感来自**变化**，不是来自"细节清单"。

---

## 二、修复方案：从"固定清单"改为"随机池 + 禁重复"

### 规则 1：每次生成前先随机抽一组
从下方 6 组中**随机选 1 组**，不允许连续两次使用同一组。

### 规则 2：痣是"可选项"，且位置可以完全不出现
- 允许：无痣 / 有痣（位置随机：右颊、下颌、眉尾、鼻侧、额角）
- **禁止**：连续两次生成都出现"左颊痣"
- 如果一组里含痣，必须写明具体随机位置，而不是笼统"左颊"

### 规则 3：必须加"美国蓝领真实面孔"的共性特征（这部分可以固定）
以下是美国底层劳动者的**共性**，可固定写：
- 面部有长期日晒痕迹，额头与鼻梁肤色比颈部深一档
- 眼角外侧有细密鱼尾纹
- 法令纹较深
- 鼻翼两侧毛孔明显
- 眉毛自然杂乱未修
- 手背有老茧、指节粗糙、指甲边缘有细微油污
- 牙齿非纯白，略带自然黄调
- 发型随意（被帽子压过的痕迹 / 随手扎起 / 碎发毛躁）

---

## 三、六组随机人物特征池（每次随机抽一组）

### 组 A：中年男性技工（无痣）
```
FACE A — a white man in his early fifties with short grey-brown hair cut close at the sides and slightly long on top, pushed back with his fingers. His face has more colour across the forehead and nose bridge than on his neck from years outdoors, deep lines running from his nose to the corners of his mouth, fine creases fanning out from the outer corners of his eyes, and open pores across the nose and the inner cheeks. His eyebrows are thick and never trimmed. Two days of grey stubble covers his jaw and upper lip unevenly, heavier under the chin. His teeth carry a faint natural yellow. His hands show callused palms, thickened knuckles and a thin dark line of old grease under two fingernails.
```

### 组 B：中年女性主妇（右颊一颗小痣）
```
FACE B — a white woman in her late thirties with shoulder-length wavy dark brown hair tucked behind one ear, several loose strands stuck to her temple. She has a small dark mole the size of a grain of rice on her right cheekbone, close to the outer corner of her eye, and nothing else on the rest of her face. Her skin is uneven across the forehead, with faint horizontal lines and a light scattering of freckles across the top of her nose. Her eyebrows are natural and slightly uneven. Her lips are a little dry with visible fine lines. Her hands are dry with short unpolished nails and a faint pale mark where a ring usually sits.
```

### 组 C：年轻男性（无痣，有轻微痘痕）
```
FACE C — a white man in his late twenties with short messy light-brown hair and a faded tan line across his forehead from a cap. His cheeks carry a few old shallow acne marks and his chin has a small patch of stubble he missed shaving. His eyes sit slightly deep with faint shadow underneath. His nose is a little red at the tip from cold air. His neck is noticeably lighter than his face. His hands are dry with a healing scrape across one knuckle.
```

### 组 D：年长女性（下颌一颗痣 + 老年斑）
```
FACE D — a white woman in her mid fifties with short greying hair swept back and held by a plain clip. She has two small age spots high on her left temple and one dark mole low on her jawline near the chin. Fine vertical lines sit above her upper lip, and the skin under her eyes is thin with a faint bluish undertone. Her eyebrows are sparse at the outer ends. She wears no makeup. Her hands are thin with prominent veins and a slightly bent index finger.
```

### 组 E：非裔美国男性（无痣，肤质真实）
```
FACE E — a Black man in his forties with a close-cropped fade and a short neat beard with a few grey hairs in it. His skin is deep brown with an uneven tone: lighter across the cheekbones, a little darker around the mouth. He has visible pores on his nose and forehead, a faint horizontal scar about a centimetre long above one eyebrow, and deep creases at the outer corners of his eyes. His hands are broad with thick fingers and a lighter patch of old scar tissue on one knuckle.
```

### 组 F：拉美裔美国女性（无痣，有晒斑）
```
FACE F — a Latina woman in her early forties with long dark hair pulled into a low ponytail, a few strands loose at the neck. She has a scattering of small sun spots across her nose and upper cheeks and no moles. Her skin shows fine lines at the outer eye corners and a slightly dry texture on the cheeks. Her eyebrows are dark and full. Her lips have a natural darker edge. Her hands are warm-toned with short nails and a thin callus along the base of the fingers from housework.
```

---

## 四、多种子人物组合（多人场景用）

多人同框时，**必须从不同组抽人**，且**禁止两人有同类标记**：

| 组合 | 人物 A | 人物 B | 禁止 |
|---|---|---|---|
| 夫妻 | 组 A | 组 B | 不许两人都有痣 |
| 父子 | 组 A | 组 C | 不许两人都戴帽 |
| 母女 | 组 D | 组 B | 不许两人都扎发 |
| 邻里 | 组 E | 组 F | 不许两人同发色 |

**多人同框附加规则**：
```
The two people look like they belong to different families or different generations: different face shapes, different hair, different skin tone depth. Neither of them shares a visible mark with the other.
```

---

## 五、写入提示词的固定句式（不随组变化）

```
This is one specific ordinary person, not a model and not a presenter. The face carries the ordinary marks of a working life outdoors and indoors: uneven tone between the face and the neck, open pores across the nose and inner cheeks, natural creases, and eyebrows that have never been shaped. The skin is matte and dry to the touch, with the only shine being one small spot on the bridge of the nose. The eyes carry a visible dark iris ring and one small rectangular white catchlight in each eye from the room light. The mouth is relaxed and closed between sentences.
```

---

## 六、自检（新增第 32 项）

**第 32 项 · 人物不重复**
- 是否从 A–F 六组中随机抽了 1 组（多人场景抽不同组）？
- 是否**没有**把"左颊痣"写成固定项？
- 若本组含痣，是否写明了**该组指定的随机位置**（右颊 / 下颌 / 眉尾 / 鼻侧 / 额角），而非一律左颊？
- 是否包含"美国蓝领共性特征"（日晒色差、鱼尾纹、法令纹、鼻翼毛孔、眉毛未修、手部老茧、牙齿自然黄）？
- 是否与上一版生成的人物**明显不同**？
