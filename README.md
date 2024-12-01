
### 数据驱动测试学习  
目标：  
- 最少代码实现libebpf类似的单元测试。  
- 搞定tor等复杂软件的测试。  

#### 初步尝试：
1. 无脑打教程：  
https://segmentfault.com/a/1190000007876965  
测试未通过，很多看不懂的语法，例如：  
```
# BaseLib.pm后面的：
1;

__END__

NONE
```

学习最简测试方法：  
https://github.com/fripSide/unisimu-Yichun/blob/master/Ion/t/sanity.t  