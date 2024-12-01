
### 数据驱动测试学习  
目标：  
- 最少代码实现libebpf类似的单元测试。  
- 搞定tor等复杂软件的测试。  

#### 运行测试  
```
prove -v t/*.t
# 或者
prove
```

#### 当前感悟  
不熟悉perl处理字符串，不然可以直接先用perl来写测试  

#### 初步尝试  
1. （done）无脑打教程：  
https://segmentfault.com/a/1190000007876965  
测试未通过，很多看不懂的语法，例如：  
```
# BaseLib.pm后面的：
1;

__END__

NONE
```

2. （done）学习最简测试方法：  
https://github.com/fripSide/unisimu-Yichun/blob/master/Ion/t/sanity.t  
DataDrivenTest/t/add.t  
