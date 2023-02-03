# 粤语
粤语编程语言(Cantonese)是一门用粤语来与计算机沟通的编程语言, 由一位来自广州的16岁高中生 Stepfen Shawn 开发.  

# 特性
* 图灵完备, 语法灵活丰富
* 具有有丰富的内置函数
* 可扩展性, 易于与 Python 相互调用
* 利用粤语与编程结合的方式, 添加了编程的趣味性

使用粤语编程语言可以写出优美而又功能强大的代码, 以下为用粤语编程语言编写的翻译器:    
```
使下 网络请求

讲嘢 : 结束 係 唔啱

落操场玩跑步
    讲嘢 : |文本| 係 畀你啲嘢("请输入一段要翻译的文字：")
    如果 |文本 系 "E"| 嘅话 => {
        讲嘢 : |结束| 係 啱 
    }
    |'doctype' ==> 'json', 'type' ==> 'AUTO', 'i' ==> 文本| 埋堆 -> |数据|
    讲嘢 : |网址| 係 "http://fanyi.youdao.com/translate"
    收风 -> |网址, data = 数据, json = True| @ |数据|
    畀我睇下 |身位(数据, 'translateResult', 0, 0, "tgt")| 点样先?
玩到 |结束| 为止
```

目前粤语编程语言依然处于开发和迭代中, 致力成为一门既有艺术性又不失实用性的编程语言!    

官方网站: https://cantonese-community.github.io/  
代码仓库: https://github.com/StepfenShawn/Cantonese  

参考自：  
[文言文编程还不够好玩？这里有个16岁高中生开发的粤语编程项目](https://www.jiqizhixin.com/articles/2021-06-10-3)    
[用粤语编程写一个翻译器吧!](https://www.bilibili.com/video/BV1nF411F7ku)  
