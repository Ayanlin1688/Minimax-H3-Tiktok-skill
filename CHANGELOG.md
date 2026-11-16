# 更新日志

本项目的所有重要变更都记录在此文件。

格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，
版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

---

## [1.0.0] - 2026-11-16

首次开源发布。

### 新增 · 核心规范
- `SKILL.md`：27 条铁律（A–AA）+ 36 项强制自检
- `universal-master-template.txt`：全类目通用主模板（固定脚手架 + 6 个填空槽）
- `prompt-template.txt`：用户输入卡，含三大品类填写示例

### 新增 · 规则库
- `persona-variation-pool.md`：A–F 六组随机人物池（治"每张脸同一位置长同一颗痣"）
- `clipping-hook-and-scene-fix.md`：穿模诊断 + 前三秒钩子 + 美国家庭场景库
- `real-footage-realism-model.md`：七层真实感正向模型
- `special-category-compliance.md`：S1–S8 特殊监管品类合规层
- `category-extension-grammar.md`：C1–C8 品类扩展语法
- `universal-product-interaction-grammar.md`：T1–T5 档位 + 4 类安全交互模板

### 新增 · 病理诊断档案（五轮逐帧取证）
- `h3-anti-artifact-root-causes.md`：第 1 轮 —— 第三只手、产品分身、面部油光
- `contact-ghosting-waxface-fix.md`：第 2 轮 —— 产品悬空、幻影重影、蜡像脸
- `v3-colorbleed-state-lock.md`：第 3 轮 —— 整脸被产品染红、折叠态错乱、屏显乱码
- 第 4 轮并入 `real-footage-realism-model.md` —— 发现"太干净"本身也是假
- 第 5 轮并入 `persona-variation-pool.md` + `clipping-hook-and-scene-fix.md` —— 固定痣、穿模、开头没人看

### 新增 · 数据与工具
- `viral-script-vault.md`：TikTok Shop 8 大爆款剧本金库
- `tiktok-compliance-rules.md`：美区合规防封准则与极限词黑名单
- `liveness-acting-guide.md`：活人感表演体系
- `benchmark-video-realism-spec.md`：实拍标杆光学规范
- `minimax-h3-syntax.md`：H3 官方 Context-IR 语法速查
- `case-study-example.md`：可折叠磁吸 COB 工作灯完整实战案例
- `scripts/fetch_tiktok_trends.py`：8 大爆款原型匹配与分镜骨架生成
- `tools/sync-to-github.ps1`：一键同步到 GitHub 与本机客户端技能库

### 修复 · 对齐 MiniMax H3 官方规范
- 修复正向段残留否定词（`no` / `never` / `without`）共 11 处，恢复"正向段零否定词"自洽
- 修复"100% 零文字"与官方"参考图原有文字必须保留"的冲突，新增铁律 X 文字分层
- 修复铁律 M 把"左颊一颗痣"写死导致模板脸，改为 A–F 随机池

### 验证
- MiniMax H3 官方规范自动审计 **11/11 通过**
- 全类目路由实测：20 个跨品类商品 **20/20 全部落位**
- 已闭环验证消除：第三只手、产品分身、手飘物体旁、产品完全悬空

---

## 版本号规划

| 层级 | 触发条件 | 示例 |
|---|---|---|
| **MAJOR** | 架构重构（如本轮"反缺陷清单 → 正向真实感模型"） | 2.0.0 |
| **MINOR** | 新增铁律 / 新增品类层 / 新增规则库文件 | 1.1.0 |
| **PATCH** | 修正既有规则措辞、补漏、文档修订 | 1.0.1 |
