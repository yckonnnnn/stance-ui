# 主见 UI / STANCE · 开源版

由 Zack（[@yckonnnnn](https://github.com/yckonnnnn)）设计、编写和维护。

一套给 AI 编程助手的界面设计方法。它不绑定组件库，不要求固定技术栈，重点解决三件事：

1. 先做三个真正不同的方向，再选一个继续。
2. 用真实内容建立层级，不靠模板和装饰。
3. 在真实桌面和手机屏幕里验收，而不是只看代码。

## 安装

### 从 GitHub 安装

```bash
npx skills add yckonnnnn/stance-ui -g
```

如果你只使用 Codex：

```bash
git clone https://github.com/yckonnnnn/stance-ui.git ~/.codex/skills/stance-ui
```

### 手动安装

把整个 `stance-ui` 文件夹放到你的 AI 工具能读取的 skills 目录，或在项目里直接引用 `SKILL.md`。

把下载到的压缩包解压到 AI 工具能读取的 skills 目录：

```bash
unzip stance-ui-open-source.zip -d ~/.codex/skills
```

解压后应得到 `~/.codex/skills/stance-ui/SKILL.md`。Claude Code、Cursor、Windsurf 等工具的目录可能不同，把整个 `stance-ui` 文件夹放到对应 skills 目录即可。也可以直接引用本文件夹里的 `SKILL.md`。

## 确认安装成功

```bash
sh ~/.codex/skills/stance-ui/scripts/verify-install.sh
```

看到 `Install looks valid.` 就说明目录和技能文件都在正确位置。然后新开一个 AI 会话，输入：

```text
Use stance-ui to redesign this page.
```

## 使用

给 AI 一个真实任务，不要只说“做得高级一点”。

```text
用主见 UI 重新设计这个产品的首页。
先读现有页面和样式，不要直接改。
先给我三个明显不同的方向，用真实文案做成可打开的小样。
我选定后，完成整页，并在 1440px 和 390px 下检查。
检查完列出你发现的具体问题，再修一轮。
```

## 开源版和 Pro 的区别

开源版覆盖方向、结构、去 AI 味和基础验收。Pro 版增加完整交互状态、已有项目改造、控制台布局、组件精修、多轮评审和交付前减法。

详细对比见网站 `pro.html`。

## 关注作者

- GitHub: https://github.com/yckonnnnn
- 项目仓库发布后可在这里补充公开仓库地址

## 许可

MIT。可以用于个人和商业项目，可以修改和再分发。保留版权声明即可。
