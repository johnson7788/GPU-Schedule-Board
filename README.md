# GPU 配额排期看板

一个零依赖、单文件的 GPU 集群排期看板。打开就用，本地存储，可选云端同步。

🚀 **[在线体验 →](https://bowen1911.github.io/GPU-Schedule-Board/)**

![Built with](https://img.shields.io/badge/stack-vanilla%20HTML-blue) ![Storage](https://img.shields.io/badge/storage-localStorage%20%2B%20JSON-success) ![License](https://img.shields.io/badge/license-MIT-lightgrey)

## ✨ 特色

- **单文件运行**：纯 HTML / CSS / JS，无构建、无后端、无依赖。
- **甘特排期**：按日 / 周自动刻度，支持拖动、缩放（`⌘/Ctrl + 滚轮`）和依赖箭头。
- **配额感知**：实时统计每个时刻 GPU / 节点占用，超额条目高亮告警。
- **JSON 即真相**：全部数据可一键导出/导入；绑定云盘文件即可自动双向同步。
- **20 步撤回 + 前向重做**：误删误改随时回滚，`⌘/Ctrl+Z` / `⌘/Ctrl+⇧+Z`。
- **深 / 浅主题**：跟随系统也可手动切换；UI 元素全部走主题变量，无突兀色块。
- **键盘友好**：自定义日期选择器、`N` 新建、双击 `⌫` 删除、`Esc` 取消等。

## 🚀 快速开始

```bash
# 1. 直接双击打开
open index.html

# 2. 或起个本地静态服务（推荐，云同步功能需要 https/localhost）
python3 -m http.server 8080
# 访问 http://localhost:8080
```

## 🐳 容器启动

```bash
# 构建镜像
docker build -t gpu-schedule-board .

# 运行（映射到 8080 端口）
docker run -d -p 8080:80 --name gpu-board gpu-schedule-board
# 访问 http://localhost:8080
```

## 📦 部署到 GitHub Pages

```bash
git init && git add . && git commit -m "init"
git branch -M main
git remote add origin git@github.com:<you>/<repo>.git
git push -u origin main
```

仓库 → **Settings → Pages → Source: `main` / `/ (root)`**，几十秒后即可访问
`https://<you>.github.io/<repo>/`。

## 💾 数据与同步

| 方式 | 说明 | 适用 |
|---|---|---|
| **localStorage** | 默认存储，绑定当前浏览器 | 个人单机 |
| **导出 / 导入 JSON** | 工具栏按钮，文件即数据 | 跨浏览器、跨设备备份 |
| **☁ 同步** | 绑定本地 JSON 文件，自动双向同步（File System Access API） | Chrome / Edge / Brave；放云盘目录可跨设备 |

> JSON 文件包含 `quota`（配额配置）+ `tasks`（任务列表）+ `updatedAt`（用于冲突仲裁）。
> 主题、视图范围等 UI 偏好按设备本地保存，不进文件。

## ⌨️ 快捷键

| 键 | 功能 |
|---|---|
| `N` | 新建任务 |
| `⌫ ⌫` | 选中条目连按两次删除 |
| `⌘ / Ctrl + Z` | 撤回（最多 20 步） |
| `⌘ / Ctrl + ⇧ + Z` | 重做（仅在未做新操作时可用） |
| `⌘ / Ctrl + 滚轮` | 时间轴缩放 |
| `⌘ / Ctrl + Enter` | 在新建/编辑窗中保存 |
| `Esc` | 关闭弹窗 / 选择器 |

## 🗂 目录结构

```
.
├── index.html      # 全部代码与样式
└── README.md
```

## License

MIT

## Star History

<a href="https://www.star-history.com/?repos=Bowen1911%2FGPU-Schedule-Board&type=date&legend=bottom-right">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=Bowen1911/GPU-Schedule-Board&type=date&theme=dark&legend=bottom-right" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=Bowen1911/GPU-Schedule-Board&type=date&legend=bottom-right" />
   <img alt="Star History Chart" src="https://api.star-history.com/chart?repos=Bowen1911/GPU-Schedule-Board&type=date&legend=bottom-right" />
 </picture>
</a>
