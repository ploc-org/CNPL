## CovScript 智锐编程语言

[![](http://covscript.org.cn/covscript_logo.png)](https://unicov.cn/covscript/)

### 文档
我们在[CovScript在线文档](https://csman.info)上提供了完整的文档，社区（四川大学智锐科创计算机协会）也提供了部分教程，如需联系社区请加QQ群：878319880

### 运行 & 安装
目前CovScript在线运行环境（API/网页/小程序）暂时出了些问题，恢复服务后我会在这里更新

我们在[官网](https://unicov.cn/covscript/)上提供了Windows、Ubuntu、macOS、Raspberry Pi OS、UOS 龙芯3A的核心运行环境安装包，其中Windows和Linux提供了由GitHub Actions驱动的开发版（每四小时更新一次）

下载并安装对应平台的运行环境后，可使用`cspkg`安装需要的包，使用教程请参考[CSMAN](https://csman.info/doku.php?id=manual:reference:toolchain:cspkg:main_page)

CovScript社区针对VSCode做了相应的优化，可以在VSCode扩展商店里搜索CovScript，安装较新的由mikecovlee发布的扩展即可实现代码高亮和自动缩进

具体关于平台支持相关的信息以及如何从头编译CovScript工具链，请访问我们的[CSBuild Repository](https://github.com/covscript/csbuild)

### Hello, world!
```
system.out.println("Hello, world!")
```