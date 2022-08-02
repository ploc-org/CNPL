# KCL 配置语言

- Kusion: https://github.com/KusionStack
- KCL 配置语言: https://github.com/KusionStack/KCLVM

## 执行例子

- 安装并启动 Docker 服务
- 执行 make 命令

```
docker run --rm -it -v `pwd`:/root -w /root kusionstack/kusion kcl main.k
```

输出结果:

```yaml
demo:
  apiVersion: apps/v1
  kind: Deployment
  metadata:
    name: nginx-deployment
  spec:
    replicas: 3
    selector:
      matchLabels:
        app: nginx
    template:
      spec:
        containers:
        - image: nginx:1.14.2
          name: nginx
          ports:
          - containerPort: 80
```

此外 KCL 配置语言也支持一些简单的函数，也支持通过 Python 语言开发扩展模块，具体请参考项目文档。

