# SwiftModel
Dictionary to model. write in swift

- 一个简单的字典转模型框架（A simple framework for dictionary to model）

#目录

* [字典转模型（dictionary to model）](#dict2model)
* [字典数组转模型数组（dictionary array to model array）](#dictarray2modelarray)

- 在这个分类中有两个方法可以用于字典转模型，一个传入一个字典来转换成模型，另一个则是传入字典数组转换成模型数组
======================
字典转模型
```
class func objectWithDictionary(dict:[String : AnyObject]) -> NSObject
```
- 直接使用你的模型类调用这个方法，传入字典返回模型，例子在工程中。
========================
字典数组转模型数组（dictionary array to model array）

```
class func objectArrayWithDictionaryArray(array:NSArray) -> [AnyObject]
```
=========================
- 用法与上一个方法类似，不同的是传入一个字典数组返回一个模型数组

=================================================================================
```
    // MARK: - 模型中有个数组属性，数组里面又要装着其他模型 (子类重写)    
    func objectClassInArray() -> [String : AnyClass]? {
        return nil
    }
```
* 如果在你的自定义类中，有一个或多个数组，并且这个数组中的元素依旧是自定义的，那么你需要使用这个方法来告诉它，你数组中的是那种自定义类，在模型类中重写这个方法

========================================================================
    // MARK: - 模型中的属性名和字典中的key不相同（子类重写）
    class func replacedKeyFromVariableName() -> [String : String]? {
        return nil
    }
=============================================================================
* 如果在你的自定义类中，变量名和字典中的key不相同，那么使用这个方法告诉它被替换的key是什么

    // MARK: - 模型中包含其他自定义模型，通过该方法返回自定义类类名（子类重写）
    class func customClassForVariableName() -> [String : AnyClass]? {
        return nil
    }

```
=====================================================================
* 如果你的模型类变量中，有Bool,Int,Float...基础类型,那么你需要在你的模型类中重写下面的这个方法来进行赋值，否则就会崩溃


    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
    	// Int
        age = (value as! Int) != 0
    }
    
```
* 如果在自定义类中一个以上的基础类型的变量，你需要通过判断key进行赋值。最好不要使用这些基础类型
- 添加NSObjec+model.swift并且拷贝这些代码到你的工程中，并运行起来，这个数据结构也不是很简单的了，绝对能够满足大家的需求

