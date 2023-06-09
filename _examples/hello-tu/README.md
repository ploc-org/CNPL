# tu-lang语言例子

欢迎使用 凸语言: https://github.com/tu-lang/tu

目前已自举完成`编译器,汇编器,链接器`

已实现std与runtime,100%tulang代码，原汁原味,无任何外部动态库以及gnu工具链依赖

自己编译，自己汇编自己链接生成linux下可执行程序

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