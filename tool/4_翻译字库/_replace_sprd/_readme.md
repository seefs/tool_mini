
### 批量替换单个翻译


准备：复制翻译到default表
1 default表，
  A列，ID
  B列，无用
  C列，无用
  D列，English 或 Hebrew
  E列，Hebrew 备份(方便与输出对比)
  F列，Hebrew 输出

方式一, 查找English替换Hebrew，D列为English，EF列为Hebrew
方式二, 查找Hebrew 替换Hebrew，DEF列为Hebrew
方式三, 同时替换English + Hebrew，需单独处理

2 change表
  修改A2=2，A3=default表最大行数, 用于批处理 


操作：
1 change表，复制新翻译
  B列，错的翻译
  C列，对的翻译
  D列，标记
	Fixed--------未替换，已经单独处理
	Not Fixed----未查找到
	Re All-------批量替换
	Ok-----------避免第2次替换时，被批量替换; 一对多替换，不能全部替换
	Err----------
	
单独处理一, 星期缩写，只有1个字母/星期有2个S

2 change表，复制新翻译
  A列，点红色按钮，开始替换
  D列，为Re All才替换

3 change表，最后校正
  D列--查看结果，依次点击/下一个，查看右侧是否已替换
  K列--单个替换，单击 "空白"，替换单个翻译；
  K列--单个删除，Delete "OK", 还原单个翻译；
  E~K列，显示+校正，行数不够，往下复制，就可以了


其他：
1 查看宏代码：
excel快捷键alt+F11 -> 模块1 -> FUN_REPLACE_ALL() 替换功能



