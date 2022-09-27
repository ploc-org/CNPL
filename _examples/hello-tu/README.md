# tu-lang语言例子

欢迎使用 凸语言: https://github.com/tu-lang/tu

自举进度: https://github.com/tu-lang/tu

## 链接测试
```
> wget https://github.com/tu-lang/tu/raw/main/linker/bin/amd64_linux_tol
> chmod 777 amd64_linux_tol
> ./amd64_linux_tol -p ./linker
> chmod 777 a.out
> ./a.out
hello tulang!
```

## 动态写法
```
use fmt
use os
func main(){
    arr = [0,1,2,3,4]
    map = {"1":"a","hello":"world","2":"b",3:"c","map":arr}
    for( k,v : map)
    {
        if k == "map" {
            for(v2 : v){}
        }
        fmt.println(k,v)
    }

    match map["hello"] {
        arr[0] : os.die("not this one")
        999    : os.die("not this one")

        "hello" | "world": {
            fmt.println("got it",map["hello"])
        }
        _      : {
            os.die("not default")
        }
    }
}
```
## 静态写法

```
//tu/runtime/pkg/runtime/kv_map.tu
func map_find(map<Value>, key<Value>){
    tree<Rbtree>          = map.data
    node<Rbtree_node>     = null
    sentinel<Rbtree_node> = null

    hk<u64> = 0
    match key.type {
        Bool   : hk = key.data
        Int    : hk = key.data
        String : hk = hash_key(key.data,string.stringlen(key.data))
    }
    node = tree.root
    sentinel = tree.sentinel

    while node != sentinel 
    {
        if  hk != node.key  {
            if  hk < node.key {
                node = node.left
            }else{
                node = node.right
            }
            continue
        }
        if  node.k.type == key.type {
            return node.v
        }
    }
    return Null
}
```