# NSNumberOperation
NSNumberOperation 
iOS 精度处理 工具类
iOS 高精度计算库，适用于金融类App：【精度处理】，【精度保留】，等场景；【精度丢失】，【精度损失】，等问题的解决；可自定义：四舍五入、向下取整；
是我自己封装的一个 NSNumber运算 库，适用于金融类APP等对计算精度要求较高的场合，采用线性运算，代码流式调用,不支持运算优先级
(num1 + num2 - num3)*num4/num5;
=
N(num1).add(num2).sub(num3).mul(num4).div(num5).scale2();

How to use it ?

edite your podfile

pod 'NSNumberOperation'

and run pod install
