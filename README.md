# Zack UI

**给 AI 编程助手用的界面设计方法。网站、App、后台和组件都能用。**

作者：Zack · [GitHub](https://github.com/yckonnnnn) · [zackui.com](https://zackui.com)

Zack UI 不绑定组件库，也不替你决定品牌。它先迫使 AI 做判断，再让视觉形式服务于真实任务。

## 质量承诺

这不是残缺的演示版。开源版必须能独立做出与同类最佳方法同级、在某些维度更好的完整页面。

公开示例的最低要求：

- 同题盲评达到 8.4/10。
- 与 Oil UI 对比时，至少三项不低于参考，总分差距不超过 0.3。
- 不能只靠换颜色制造差异。

Pro 的价值是已有项目、完整状态、多轮复检和交付可靠性，不是“开源版故意做得更差”。

## 解决什么

- 新网站从零没有方向。
- App 做出来像压窄的网页。
- 页面到处都是 AI 默认套路。
- 组件只有成功状态。
- 代码写完没有在真实桌面和手机上验收。
- 改版时不知道应该整理、升级还是改流程。

## 里面有什么

- 网页、落地页、产品页、定价页和内容站方法。
- App 核心循环、导航、移动端布局和状态。
- 三个真正不同的设计方向，而不是三套颜色。
- 字体、颜色、栅格、间距和组件规则。
- 动效决策与时长。
- 真实桌面、手机和 200% 细节验收。
- 可直接复制的网站、App、改版和组件提示词。
- 一个可打开的并排方向板。
- 同质化检查与八种视觉家族，防止每个项目都长成同一套风格。
- 明确的设计质量下限，避免“换了颜色但仍是通用 SaaS”。

## 安装

### 当前项目

```bash
npx skills add yckonnnnn/zack-ui
```

会装到项目的 `.agents/skills/zack-ui`。

### 所有 Codex 项目

```bash
git clone https://github.com/yckonnnnn/zack-ui.git ~/.codex/skills/zack-ui
```

Claude Code、Cursor、Windsurf 等工具的 skills 目录可能不同。把整个 `zack-ui` 文件夹放进去即可。

## 确认安装成功

```bash
sh ~/.codex/skills/zack-ui/scripts/verify-install.sh
```

看到 `Install looks valid.` 后，新开一个 AI 会话，输入：

```text
Use zack-ui to design this page.
```

## 直接使用

新网站：

```text
用 Zack UI 设计这个产品的官网首页。
先读真实产品、用户和现有内容，不要直接写页面。
先给我三个明显不同的方向，每个方向只做首屏。
说明各自适合什么，我选定后再完成整页。
最后在 1440px 和 390px 下打开检查。
```

新 App：

```text
用 Zack UI 设计这个 App 的核心三屏。
先写清核心循环、导航模型和主要动作。
先给我三套不同的首页方向，再做详情和结果页。
补齐空、加载、错误和成功状态。
最后按 390×844 检查真实操作。
```

## 目录

```text
zack-ui/
  SKILL.md
  README.md
  agents/openai.yaml
  references/
    web-pages.md
    mobile-apps.md
    design-direction.md
    typography-color.md
    layout-components.md
    motion.md
    review.md
    prompts.md
  assets/
    direction-board.html
  scripts/
    verify-install.sh
```

## 边界

Zack UI 改善的是设计过程和判断，不保证任何模型都产出同样质量。

结果仍然取决于：

- 模型的视觉能力。
- 需求是否清楚。
- 是否有真实内容。
- 是否真的打开页面检查。

如果用户只要求评审，技能不会直接改代码。

## 开源版和 Pro

开源版覆盖方向、网页、App、组件、动效和基础验收。

Pro 版增加已有项目改造、完整交互规格、复杂工作台、多轮视觉复检、单组件深修、交付规格和真实任务清单。

详细区别见 [zackui.com/pro](https://zackui.com/pro)。

## 许可

MIT。可以用于个人和商业项目，可以修改和再分发。保留版权与许可声明。
