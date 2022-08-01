## Calcit 语言

欢迎尝试 Calcit 语言. 嫌拗口可以叫"方解石"或者"方解"语言.

[![](https://cdn.tiye.me/logo/calcit.png)](http://calcit-lang.org/)

### 编辑器说明

Calcit 语言设计中, 主要使用网页编辑器来进行开发, 可能上手较难, 参考[Calcit 脚手架](https://github.com/calcit-lang/calcit-workflow).

本示例对应[最小化脚手架](https://github.com/calcit-lang/minimal-calcit), Calcit 提供了对纯文本编辑器编码的支持, 需要多运行一个命令先对代码进行合并处理, 然后执行.

### 用法

1. 安装 Calcit.

先安装 Rust, 再运行:

```bash
cargo install calcit
```

2. 运行程序.

```bash
$ bundle_calcit -1 && cr -1
file created at ./compact.cirru
Calling main function: 10
Calling lib
took 0.238ms: nil
```

```
.
├── README.md
├── compact.cirru # `bundle_calcit` 合并后的文件
├── package.cirru # `bundle_calcit` 使用的配置信息
└── src # 纯文本编辑器编码的内容
    ├── lib.cirru
    └── main.cirru
```

### 编译到 JavaScript

Calcit 会编译代码到 `js-out/*.mjs`, 需要创建一个额外的 `main.mjs` 作为入口文件:

```js
import { main_$x_ } from "./js-out/app.main.mjs";
main_$x_();
```

运行前需要安装一些核心函数的模块, 最后用 Node.js(注意版本要有 ES Modules 支持)运行:

```bash
cr -1 --emit-js
yarn add @calcit/procs
node main.mjs
```

或者也可以自己再安装 Vite 配合 HTML 页面运行.
