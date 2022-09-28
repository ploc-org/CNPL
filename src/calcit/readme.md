# <img src="https://cdn.tiye.me/logo/calcit.png" style="width:80px;height:80px;vertical-align:middle;"> Calcit

欢迎尝试 Calcit 语言. 中文可以叫"方解石"或者"方解"语言.

- 网站 <http://calcit-lang.org/>
- 文档 <http://guide.calcit-lang.org/>
- API 手册 <http://apis.calcit-lang.org/>

### 特性和功能

主要用于网页应用开发和一些简单的脚本的场景. 基于 ClojureScript 功能子集开发, 加上了一些自研的工具链和定制策略提升编码速度.

- 不可变数据结构, 便于 Virtual DOM 方案优化
- Lisp 方言, 支持基本的宏定义扩展语言
- 热替换友好, 聚焦快速反馈和迭代
- 支持编译到 `.mjs` 文件使用
- 使用树形编辑器编码, 同时也支持缩进前缀语法的文本开发方式
- 使用 Rust 开发, 可以通过 FFI 方式调用 Rust 生态的模块

ClojureScript 由于使用 JVM 作为运行环境, 启动速度慢运行内存大, 而且针对 Closure Compiler 生成 js 代码一定程度影响了与前端工具链的衔接使用. Calcit 基于 Rust 平台和较简化的代码生成避开了此类问题.
