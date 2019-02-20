Public excelRows As Integer    '锁F8
Public myDoc As Object         '锁F8
Public wordApp As Object       '锁F8
Public excelApp As Object      '锁F8
Public mySheet As Object       '锁F8
Public xlBook As Object        '锁F8
Public defaultPath As String   '锁F8
Public isAsk As Boolean     '锁F8
Public myCurCommand As String  '锁F8    F8批处理类型
Public myCommand As String     '锁F0    F8考试科目
Public myReCommand As String   '锁F8    F8最下级命令
Public myConst As String       '锁F8    F8常数命令集
Public isClose As Boolean      '锁F5/保存
Public myNewName As String     'F8文字/保存
Public isReName As Boolean     '保存/F8移动图表
Public isKillFile As Boolean   'F8文字
Public myClass As String       'F8资料分类
Public extensionMsg As String        'F8扩展名信息
Public extensionName As String       'F8扩展名
Public extensionNames As String      'F8所有扩展名(动)
Public extensionAllName As String    'F8所有扩展名(静)
Public myAllName() As String   'F8图片名称
Public keyWord As String       'F8关键字
Public myCount As Integer      'F6/F7/F9/F8图片
Public isReColor As Boolean    'F6
Public strtext As String    '
Public s As FileSearch    ' '定义一个文件搜索对象
Public myStr As String    '公共
Public myCurStr As String '公共(最底层、参数)
Public myText As String   '公共(最底层、常量)
Public myBool As Boolean  '公共
Public myInt As Integer   '公共
Public myPath As String   '公共
Public myRange As Range   '公共
Public myName As String   '公共


Sub F2无格式粘贴到新word并保存关闭() '

' 用法（不选择→F2）：（没有窗口打开，新建文档） + 无格式粘贴 + 清除考试大等相关信息 + 格式/字体/段落调整 + 保存 + 关闭
' 用法（ 全选 →F2）：区别在于，有窗口打开也新建
    Dim isUnSave As Boolean
    myCommand = "F2"
    If Application.Documents.Count > 0 Then
        If Selection.Range.Start = 0 And Selection.Range.End = ActiveDocument.Range.End Then
            Documents.Add DocumentType:=wdNewBlankDocument      '如果全选，新建文档
        End If
        If ActiveDocument.Paragraphs.Count > 2 Then
'           Documents.Add DocumentType:=wdNewBlankDocument      '新建文档       网速过的去，就不新建
        End If
    Else
        Documents.Add DocumentType:=wdNewBlankDocument      '新建文档
    End If
    Selection.PasteSpecial Link:=False, DataType:=wdPasteText, Placement:=wdInLine, DisplayAsIcon:=False      '无格式粘贴
'   F10调整
    F0字体段落
    F0保存
End Sub
Sub F3无格式粘贴程序()
'
' 用法（不选择→F3）：（没有窗口打开，新建文档） + 无格式粘贴 + 清除考试大等相关信息 + 格式/字体/段落调整 + 保存
' 用法（ 全选 →F3）：区别在于，会先关闭并删除原来word；区别于F2，不关闭
    myCommand = "F3"
    If Application.Documents.Count < 1 Then
        Documents.Add DocumentType:=wdNewBlankDocument      '新建文档
'       oWordApplic.Documents.Add(strName, System.Reflection.Missing.Value,System.Reflection.Missing.Value,  Boolean isVisible)      '用模板新建文档
    Else
        ActiveDocument.Activate
        If Selection.Range.Start = 0 And Selection.Range.End = ActiveDocument.Range.End And Selection.Range.End <> 0 Then
            myName = ActiveDocument.FullName
            ActiveDocument.Save
            ActiveDocument.Close
            Kill myName
            Documents.Add DocumentType:=wdNewBlankDocument      '如果全选，保存关闭 + 删除 + 新建文档
        End If
    End If
    Selection.PasteSpecial Link:=False, DataType:=wdPasteText, Placement:=wdInLine, DisplayAsIcon:=False      '无格式粘贴
'   F10调整
    F0字体段落
    Selection.WholeStory
    Selection.MoveRight Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph      ' 文章结尾换行
    F0保存
End Sub
Sub F4带图表粘贴到新word并保存关闭()
'
' 用法（不选择→F4）：（没有窗口打开，新建文档） + 粘贴 + 清除考试大等相关信息 + 格式/字体/段落调整 + 保存 + 关闭
' 用法（ 全选 →F4）：区别在于，有窗口打开也新建。
    myCommand = "F4"
    If Application.Documents.Count > 0 Then
        If Selection.Range.Start = 0 And Selection.Range.End = ActiveDocument.Range.End Then
            Documents.Add DocumentType:=wdNewBlankDocument      '如果全选，新建文档
        End If
        If ActiveDocument.Paragraphs.Count > 2 Then
'           Documents.Add DocumentType:=wdNewBlankDocument      '新建文档
        End If
    Else
        Documents.Add DocumentType:=wdNewBlankDocument      '新建文档
    End If
    Selection.PasteAndFormat (wdPasteDefault)      '粘贴
'   F10调整
    F0字体段落
    F0保存
End Sub
Sub F5格式调整程序()
'
' 用法（不选择→F5）：格式/字体/段落调整 + 保存
' 用法（ 全选 →F5）：区别在于，保存下划线、加粗等格式。
' 用法（没有窗口打开时）：新建文档 + 粘贴 + 保存 + 关闭。没有处理格式。
    Dim issaveformat As Boolean
    myCommand = "F5"
    If Application.Documents.Count > 0 Then
        If Selection.Range.Start = 0 And Selection.Range.End = ActiveDocument.Range.End Then
            If InStr(ActiveDocument.Range.Text, "</") > 0 Then F7加答案    '去格式标记
            F7加答案      '如果全选，保存下划线、加粗等格式
            issaveformat = True
        End If
    Else
        Documents.Add DocumentType:=wdNewBlankDocument      '新建文档
        Selection.PasteAndFormat (wdPasteDefault)           '粘贴
        Selection.WholeStory
        isClose = True
    End If
'   F10调整
    F0字体段落
    If issaveformat Then F7加答案
    F0保存
End Sub
Sub F6编号()
'
' 用法（不选择→F6）：自动编号。可以设置 firstValue（第1题编号，默认为1）与 mycount（每套试题的数量，默认为0，即不作限制）
' 用法（ 全选 →F6）：只改颜色。

    Dim firstValue As Integer
    firstValue = 1   '设置初始值firstValue（第一题编号），默认为1
    myCount = 0   '设置初始值mycount（每套试题数量），默认为0（不作限制）
    
    isReColor = False:    myBool = True
    If Selection.Range.Start = 0 And Selection.Range.End = ActiveDocument.Range.End Then   '如果全选
        Selection.WholeStory
        isReColor = True  '改颜色
        myBool = False
    Else
        myStr = "初始值=" + CStr(firstValue) + Chr(13) + Chr(13)
        myStr = myStr + "每套试题数量=" + CStr(myCount) + "（0即不作限制）" + Chr(13)
        myStr = InputBox(myStr, "提示", "初始值=" + CStr(firstValue) + "；每套试题数量=" + CStr(myCount))
        If myStr = "" Then Exit Sub
        firstValue = Mid(myStr, InStr(myStr, "初始值=") + 4, InStr(myStr, "每套试题数量=") - InStr(myStr, "初始值=") - 5)
        myCount = Mid(myStr, InStr(myStr, "每套试题数量=") + 7)
        myInt = firstValue
    End If
    
    If Selection.Range.Start = Selection.Range.End Then
        Selection.WholeStory
    End If
'#########################################################################################
    If myBool Then
        Do
            With Selection.Find
                .Text = "　　([0-9]{1,})．"
                .Replacement.Text = "　　" + CStr(myInt) + "．"
                .Forward = True
                .Wrap = wdFindStop        '特殊项
                .Format = False
                .MatchCase = False
                .MatchWholeWord = False
                .MatchByte = True
                .MatchFuzzy = False        '特殊项
                .MatchWildcards = True
            End With
            With Selection
                If .Find.Forward = True Then
                    .Collapse Direction:=wdCollapseStart
                Else
                    .Collapse Direction:=wdCollapseEnd
                End If
                .Find.Execute Replace:=wdReplaceOne
                If .Find.Forward = True Then
                    .Collapse Direction:=wdCollapseEnd
                Else
                    .Collapse Direction:=wdCollapseStart
                End If
                 If Not .Find.Execute Then Exit Do
            End With
            If myCount = 0 Then
                myInt = myInt + 1
            Else
                myInt = myInt + 1
                If myInt >= firstValue + myCount Then
                    myInt = firstValue
                End If
            End If
        Loop
    End If
'#########################################################################################
    If isReColor Then       '纯文本
        ActiveDocument.Range.Font.Color = wdColorBlack
        isReColor = False
        For myInt = 1 To ActiveDocument.Paragraphs.Count
            If isReColor Then
                Set myRange = ActiveDocument.Paragraphs(myInt).Range
                myRange.Select
                With myRange.Find
                    .Text = "(　　[0-9]{1,})．"
                    .Forward = True
                    .Wrap = wdFindStop        '特殊项
                    .Format = False
                    .MatchCase = False
                    .MatchWholeWord = False
                    .MatchByte = True
                    .MatchFuzzy = False        '特殊项
                    .MatchWildcards = True
                    If .Execute Then isReColor = False        '包含标题->去色
                    .Text = "　　[一二三四五六七八九十]{1,}、"
                    If .Execute Then isReColor = False        '包含标题->去色
                End With
            Else
                If InStr(ActiveDocument.Paragraphs(myInt).Range.Text, "【") > 0 Then
                    myStr = ActiveDocument.Paragraphs(myInt).Range.Text
                    If InStr(myStr, "【答案】") > 0 Or InStr(myStr, "【解析】") > 0 Or InStr(myStr, "【来源】") > 0 Or InStr(myStr, "【评注】") > 0 Then
                        isReColor = True
                    End If
                End If
            End If
            If isReColor Then ActiveDocument.Paragraphs(myInt).Range.Font.Color = wdColorBlue
        Next myInt
        isReColor = False
    End If
    Exit Sub
'#########################################################################################
    With Selection.Find
        .Text = "^13[^13　 ]{1,}"
        .Replacement.Text = "^p　　"
        .Wrap = wdFindContinue
        .MatchByte = True
        .MatchWildcards = True
    End With
    Selection.Find.Execute Replace:=wdReplaceAll      '不空行
    With Selection.Find
        .Text = "　　[0-9]{1,}．"
'       .Text = "(^13　　[■□△0-9]{1,}[．.、])"
'       .Text = "(　　[0-9]{1,}[）、．.][!^13]{1,50}^13)"   '加色
'       .Text = "(　　[!^13：】]{1,20}[：:】])"

        .Replacement.Text = "^p^&"
        .Replacement.Font.Color = wdColorBlack
        .Wrap = wdFindContinue
        .MatchByte = True
        .MatchWildcards = True
    End With
    Selection.Find.Execute Replace:=wdReplaceAll      '小标题空行
    With Selection.Find
        .Text = "　　[一二三四五六七八九十]{1,}、"
        .Text = "(　[　（第总首其]{1,}[一二三四五六七八九十之先次参考疑问题答前结束]{1,}[章节条种类、：，）语言文献答案][!^13]{1,35}^13)"
        .Replacement.Text = "^p^&"
        .Wrap = wdFindContinue
        .MatchByte = True
        .MatchWildcards = True
    End With
    Selection.Find.Execute Replace:=wdReplaceAll      '大标题空行
    If Selection.Find.Found Then
        With Selection.Find
            .Text = "^13^13　　1．"
            .Replacement.Text = "^p　　1．"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
'       Selection.Find.Execute Replace:=wdReplaceAll      '不空行
    End If
End Sub
Sub F7加答案()
'
' 用法（不选择→F7）：加答案。先试题后答案；题号连续（"　　21．"形式），从1开始。
' 用法（ 全选 →F7）：格式转换（加粗/斜体/下划线/居中/右对齐/红色/蓝色/上下标）。
' 用法（ 置首 →F7）：答案格式。

    Dim isReText As Boolean, isReFormat As Boolean
    isReText = False: isReFormat = False: myBool = True
    myInt = 1          '初始值，设置第1题的编号
    
    If Selection.Range.Start <> Selection.Range.End Then
        If Selection.Range.Start = 0 And Selection.Range.End = ActiveDocument.Range.End Then   '如果全选
            Selection.WholeStory
            isReFormat = True   '保存格式
            myBool = False
        Else
            isReText = True   '答案清理
            myBool = False
        End If
    Else
        If Selection.Range.Start = 0 Then
            isReText = True   '答案清理
            myBool = False
        End If
        Selection.WholeStory
    End If
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
'#########################################################################################
    If isReText Then
        With Selection.Find
            .Text = "(　　[0-9A-z]{1,3})([!、.．0-9A-z])"
            .Replacement.Text = "\1．\2"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '选项加点
        With Selection.Find
            .Text = "([0-9A-z]{1,3})[、.]"
            .Replacement.Text = "\1．"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '选项换点
        With Selection.Find
            .Text = "([0-9]{1,})([A-Z√×])"
            .Replacement.Text = "\1．\2"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '选项加点："　12A　13B"
        With Selection.Find
            .Text = "([0-9]{1,})．"
            .Replacement.Text = "^p　　^&"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案换行："XX　　13．B"
        With Selection.Find
            .Text = "【答案】([A-Za-z]{1,})[，、；　]([A-Za-z])"
            .Replacement.Text = "【答案】\1\2"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案简化
        Selection.Find.Execute Replace:=wdReplaceAll      '答案简化
        Selection.Find.Execute Replace:=wdReplaceAll      '答案简化
        Selection.Find.Execute Replace:=wdReplaceAll      '答案简化
        Selection.Find.Execute Replace:=wdReplaceAll      '答案简化
        Selection.Find.Execute Replace:=wdReplaceAll      '答案简化
        With Selection.Find
            .Text = "(【答案[】A-Z]{1,})a"
            .Replacement.Text = "\1A"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案大写
        With Selection.Find
            .Text = "(【答案[】A-Z]{1,})b"
            .Replacement.Text = "\1B"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案大写
        With Selection.Find
            .Text = "(【答案[】A-Z]{1,})c"
            .Replacement.Text = "\1C"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案大写
        With Selection.Find
            .Text = "(【答案[】A-Z]{1,})d"
            .Replacement.Text = "\1D"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案大写
        With Selection.Find
            .Text = "(【答案[】A-Z]{1,})e"
            .Replacement.Text = "\1E"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '答案大写
        With Selection.Find
            .Text = "([0-9]{1,3})．"
            .Replacement.Text = "^p　　\1．"
            .Wrap = wdFindContinue
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll      '选项换点
        With Selection.Find
            .Text = "^13[^13　 ]{3,}"
           .Replacement.Text = "^p　　"
           .Wrap = wdFindContinue
           .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAl
        Exit Sub
    End If
'#########################################################################################
    If myBool Then
        Dim x1 As Integer, x2 As Integer, y1 As Integer, y2 As Integer  '（x1,y1）与（x2,y2）交换
        Dim p1 As Integer, count1 As Integer, p2 As Integer, count2 As Integer
        Dim mypara As Integer
myF7start:
                        x1 = InStr(1, ActiveDocument.Range.Text, "　　" + CStr(myInt) + "．")
        If x1 <> 0 Then y1 = InStr(x1, ActiveDocument.Range.Text, Chr(13))
        If y1 <> 0 Then x2 = InStr(y1, ActiveDocument.Range.Text, "　　" + CStr(myInt) + "．")
        x1 = x1 - 1: y1 = x1: x2 = x2 - 1: y2 = x2     '===================初始化
        
        If x2 < 1 Then
            Do
                myStr = InputBox("从第几题开始添加答案？" + Chr(13), "请输入题号", CStr(myInt + 1))
            Loop Until myStr <> ""
            myInt = CInt(myStr)
            If myInt < 1 Then Exit Sub
            GoTo myF7start
        End If
        
        p1 = 1: p2 = 1: count1 = 0: count2 = 0
        mypara = 1
        myCount = 0
        Do While myCount <= x1
            myCount = myCount + ActiveDocument.Paragraphs(mypara).Range.Characters.Count
            mypara = mypara + 1
        Loop
        p1 = mypara - 1
        Do While myCount <= x2
            myCount = myCount + ActiveDocument.Paragraphs(mypara).Range.Characters.Count
            mypara = mypara + 1
        Loop
        p2 = mypara - 1      '==============================================初始化
        
        Do
            myStr = ActiveDocument.Paragraphs(p1).Range.Text
            If InStr(myStr, "　　1．") = 0 And myInt <> 1 Then
            End If
            If InStr(myStr, "　　" + CStr(myInt) + "．") = 0 Then Exit Do
            
            mypara = p1
            Do
                y1 = y1 + ActiveDocument.Paragraphs(mypara).Range.Characters.Count
                mypara = mypara + 1
                count1 = count1 + 1
                If mypara > ActiveDocument.Paragraphs.Count - 1 Then Exit Sub
                Set myRange = ActiveDocument.Paragraphs(mypara).Range
                With myRange.Find
                    .Text = "(　　[0-9]{1,})．"
                    .Forward = True
                    .Wrap = wdFindStop        '特殊项
                    .Format = False
                    .MatchCase = False
                    .MatchWholeWord = False
                    .MatchByte = True
                    .MatchFuzzy = False        '特殊项
                    .MatchWildcards = True
                    If .Execute Then Exit Do
                    .Text = "　　[一二三四五六七八九十]{1,}、"
                    If .Execute Then Exit Do
                End With
            Loop      '=================================================确定题目范围
            
            mypara = p2
            Do
                If mypara > ActiveDocument.Paragraphs.Count - 1 Then Exit Do
                y2 = y2 + ActiveDocument.Paragraphs(mypara).Range.Characters.Count
                mypara = mypara + 1
                count2 = count2 + 1
                Set myRange = ActiveDocument.Paragraphs(mypara).Range
                With myRange.Find
                    .Text = "(　　[0-9]{1,})．"
                    .Forward = True
                    .Wrap = wdFindStop        '特殊项
                    .Format = False
                    .MatchCase = False
                    .MatchWholeWord = False
                    .MatchByte = True
                    .MatchFuzzy = False        '特殊项
                    .MatchWildcards = True
                    If .Execute Then Exit Do
                    .Text = "　　[一二三四五六七八九十]{1,}、"
                    If .Execute Then Exit Do
                End With
            Loop      '=================================================确定答案范围
            
       '    MsgBox ("s" + ActiveDocument.Range(x1, y1).Text + "s")
       '    MsgBox ("s" + ActiveDocument.Range(x2, y2).Text + "s")
            If x2 = y2 Then Exit Sub
            myStr = ActiveDocument.Range(x2 + 3 + Len(CStr(myInt)), y2).Text
            ActiveDocument.Range(x2, y2).Text = ""  'x2-1
            ActiveDocument.Range(y1, y1).Text = "　　【答案】" + myStr
            x1 = y1 + y2 - x2 + 4 - Len(str(myInt))
            x2 = y2 + 4 - Len(str(myInt))
            y1 = x1: y2 = x2
            myInt = myInt + 1
            p1 = p1 + count1 + count2
            p2 = p2 + count2
            count1 = 0: count2 = 0
        Loop
    End If
'#########################################################################################
    If isReFormat Then
        myBool = CBool(InStr(ActiveDocument.Range.Text, "</"))
        '保留：B，E，I，S，X（上下标）
        If myBool Then
            Selection.Find.ClearFormatting
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<B\>(*)\</B\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Bold = True
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll    '这个最好移到标题后面去，否则不能加答案
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<I\>(*)\</I\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Italic = True
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<U\>(*)\</U\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Underline = True
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<S\>(*)\</S\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Subscript = True
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<X\>(*)\</X\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Superscript = True
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<CR\>(*)\</CR\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Color = wdColorRed
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<CB\>(*)\</CB\>"
                .Replacement.Text = "\1"
                .Replacement.Font.Color = wdColorBlue
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<E\>(*)\</E\>"
                .Replacement.Text = "\1"
                .Replacement.ParagraphFormat.Alignment = wdAlignParagraphCenter
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "\<R\>(*)\</R\>"
                .Replacement.Text = "\1"
                .Replacement.ParagraphFormat.Alignment = wdAlignParagraphRight
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
        Else    '==================================================================================
            Selection.Find.ClearFormatting
            Selection.Find.Replacement.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Bold = True
                .Replacement.Text = "<B>^&</B>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll    '这个最好移到标题后面去，否则不能加答案
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Italic = True
                .Replacement.Text = "<I>^&</I>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Underline = True
                .Replacement.Text = "<U>^&</U>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Subscript = True
                .Replacement.Text = "<S>^&</S>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Superscript = True
                .Replacement.Text = "<X>^&</X>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Color = wdColorRed
                .Replacement.Text = "<CR>^&</CR>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .Font.Color = wdColorBlue
                .Replacement.Text = "<CB>^&</CB>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .ParagraphFormat.Alignment = wdAlignParagraphCenter
                .Replacement.Text = "<E>^&</E>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
            With Selection.Find
                .Text = "[!^13　。，；]{1,}"
                .ParagraphFormat.Alignment = wdAlignParagraphRight
                .Replacement.Text = "<R>^&</R>"
                .MatchByte = True
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            Selection.Find.ClearFormatting
'=================================================================连结，与以上反序
            With Selection.Find
                .Text = "\</R\>([^13　 。，；]{1,})\<R\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</E\>([^13　 。，；]{1,})\<E\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</CB\>([^13　 。，；]{1,})\<CB\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</CR\>([^13　 。，；]{1,})\<CR\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</X\>([^13　 。，；]{1,})\<X\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</S\>([^13　 。，；]{1,})\<S\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</U\>([^13　 。，；]{1,})\<U\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</I\>([^13　 。，；]{1,})\<I\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
            With Selection.Find
                .Text = "\</B\>([^13　 。，；]{1,})\<B\>"
                .Replacement.Text = "\1"
                .MatchWildcards = True
            End With
            Selection.Find.Execute Replace:=wdReplaceAll
        End If
    End If
End Sub
Sub F8批处理()
'注意：文件夹路径 / Excel路径 / 考试科目 / 资料分类 的设置
    Dim adecMsg As String, adecAllMsg As String, adecOPMsg As String, myTest(20) As String
    myCount = 0
    
    If defaultPath = "" Then defaultPath = "E:\5肖佳\宏代码\临时"        '设置1：文件夹路径
    myBool = True: myCurCommand = "": isAsk = True: extensionName = "*": extensionNames = "*,": extensionAllName = "*,"
    If Right(defaultPath, 1) = "\" And Right(defaultPath, 2) <> ":\" Then defaultPath = Left(defaultPath, Len(defaultPath) - 1)
    Do
        If LenB(defaultPath) >= 100 Then
            myPath = InputBox("默认：" + Chr(13) + defaultPath, "请输入新目录", defaultPath)
        Else
            myPath = InputBox(Chr(13) + "取消退出运行", "请输入新目录", defaultPath)
        End If
        If Right(myPath, 1) = "\" And Right(myPath, 2) <> ":\" Then myPath = Left(myPath, Len(myPath) - 1)
    Loop Until Dir(myPath, vbDirectory) <> ""
    If myPath = "" Then defaultPath = "": Exit Sub
    defaultPath = myPath
    ChangeFileOpenDirectory myPath
                   
myReStart:
        myCurCommand = "代号：　　功能：" + Chr(13) + Chr(13)       '改->:可以带参数，-a(All File)
        myCurCommand = myCurCommand + " 1　　　　导出图片" + Chr(13) + Chr(13)
        myCurCommand = myCurCommand + " 2　　　　排序图片" + Chr(13) + Chr(13)
        myCurCommand = myCurCommand + " 3　　　　文件(夹)重命名" + Chr(13) + Chr(13)
        myCurCommand = myCurCommand + " 4　　　　查看/修改属性" + Chr(13) + Chr(13)
        myCurCommand = myCurCommand + " 5　　　　加密文件处理（单个）" + Chr(13) + Chr(13)
        myCurCommand = myCurCommand + " 6　　　　设置文件类型" + Chr(13) + Chr(13)
    adecOPMsg = myCurCommand
    adecAllMsg = InputBox(adecOPMsg, "请输入功能代号", "3")     'MsgBox("是否文字处理？", vbYesNo, "提示")    '6返回是，7返回否
myNext:
    adecMsg = Left(adecAllMsg, 1)
    
    If adecMsg = "" Then Exit Sub
    If InStr(adecOPMsg, adecMsg + "　　　　") = 0 Then MsgBox ("error"): Exit Sub
    
    If InStr(adecOPMsg, adecMsg + "　　　　移动图表类文件") > 0 Then
        If Dir(defaultPath + "\图表类\", vbDirectory) = "" Then
            MkDir defaultPath + "\图表类\"
        End If
    End If
    
    Select Case adecMsg
        Case "1"
            myCurCommand = "导出图片"
    '       Call F8批处理_AllDir   '遍历
            F8批处理_AllFile    '不遍历（默认）
            
        Case "2"
            myCurCommand = "排序图片"
            F8批处理_AllFile
            
        Case "3"
            myCurCommand = "文件(夹)重命名"
            F8批处理_AllFile
            
        Case "4"
            myCurCommand = "查看/修改属性"
            F8批处理_AllFile
            
        Case "5"
            myCurCommand = "文档解密"
            F8批处理_文档解密
            
        Case "6"
            myCurCommand = "请选择文件类型：" + Chr(13) + Chr(13)
            myCurCommand = myCurCommand + " 1　文本文件（doc,txt）" + Chr(13) + Chr(13)
            myCurCommand = myCurCommand + " 2　图片文件（bmp,jpg,jpeg,gif）" + Chr(13) + Chr(13)
            myCurCommand = myCurCommand + " 3　音乐文件（mp3）" + Chr(13) + Chr(13)
            myCurCommand = myCurCommand + " 4　压缩文件（rar）" + Chr(13) + Chr(13)
            myCurCommand = myCurCommand + " 5　所有文件（*）" + Chr(13) + Chr(13)
            adecOPMsg = myCurCommand
            adecMsg = InputBox(adecOPMsg, "请输入功能代号", "1")
            If adecMsg = "" Then Exit Sub
            If InStr(adecOPMsg, adecMsg + "　") = 0 Then MsgBox ("error"): Exit Sub
            Select Case adecMsg
                Case "1"
                    extensionAllName = "doc,txt,"
                Case "2"
                    extensionAllName = "bmp,jpg,jpeg,gif,"
                Case "3"
                    extensionAllName = "mp3,"
                Case "4"
                    extensionAllName = "rar,"
                Case "5"
                    extensionAllName = "*,"
                Case Else
                    Exit Sub
            End Select
            GoTo myReStart
            
        Case Else
            Exit Sub
    End Select
    adecAllMsg = Right(adecAllMsg, Len(adecAllMsg) - 1)
    GoTo myNext
End Sub
Sub F9临时()
    myPath = "F:\1连续剧"
    defaultPath = myPath
    myCurCommand = "临时"
    F8批处理_AllDir
End Sub
Sub F8批处理_AllDir()
    Dim nName As String, myPathS() As String, IsPath As Boolean
    Dim nCount As Long, s As Long, i As Long
    On Error Resume Next
    
    If Right(myPath, 1) <> "\" Then myPath = myPath & "\"
    nName = Dir(myPath & "*", 23)
    Select Case myCurCommand
        Case "导出图片"
            F8批处理_AllFile
            
        Case "临时"
            MsgBox (myPath)
            
        Case Else
            Exit Sub
    End Select

    Do
        If nName = "" Then Exit Do
        If nName <> "." And nName <> ".." Then
            IsPath = False
            IsPath = GetAttr(myPath & nName) And vbDirectory
            If IsPath Then
               s = s + 1
               ReDim Preserve myPathS(1 To s)
               myPathS(s) = myPath & nName    '记忆当前目录下的所有下级目录，这是实现递归调用的关键
            End If
        End If
        nName = Dir()
    Loop
   
    For i = 1 To s
        myPath = myPathS(i)
        If InStr(myPath, "图表类") < 1 And InStr(myPath, "已上传") < 1 Then
            Call F8批处理_AllDir    '递归调用
        End If
    Next
    Erase myPathS  '回收内存
End Sub
Sub F8批处理_AllFile()
    If myPath = "" Then Exit Sub
    ChangeFileOpenDirectory myPath     '保存目录，可修改
    Dim isRun As Boolean, firstPText As String, fileCount As Integer
    Dim isPic As Boolean, file As String, newName As String
    isPic = False
    
    extensionNames = extensionAllName
myNextExtensionName:
    If (extensionNames <> "*,") Then  '逐个类型搜索
        extensionName = Left(extensionNames, InStr(extensionNames, ",") - 1)
        extensionNames = Replace(extensionNames, extensionName + ",", "")
    End If
    extensionMsg = ""
    
    Set s = Application.FileSearch
    s.LookIn = myPath
    s.FileName = "*." + extensionName    '搜索所有文件"
    s.Execute '执行搜索
    On Error Resume Next
    fileCount = s.FoundFiles.Count
    
    
    If isAsk And myCurCommand = "文件(夹)重命名" Then      '如果只修改命名，就不打开了
                      myConst = " 格式       功能" + Chr(13) + Chr(13)
        myConst = myConst + " 1XX        前加XX" + Chr(13) + Chr(13)
        myConst = myConst + " 2XX        部分前加XX" + Chr(13) + Chr(13)
        myConst = myConst + " 3XX        删去XX" + Chr(13) + Chr(13)
        myConst = myConst + " 4XX        删去左边（包括XX）" + Chr(13) + Chr(13)
        myConst = myConst + " 5XX        删去右边（包括XX）" + Chr(13) + Chr(13)
        myConst = myConst + " 6XX>YY     XX换成YY" + Chr(13) + Chr(13)
        myConst = myConst + " 7XX        后加XX" + Chr(13) + Chr(13)
        myConst = myConst + " 8          标点换成中文" + Chr(13) + Chr(13)
        myConst = myConst + " 9          标点删空格" + Chr(13) + Chr(13)
        myConst = myConst + " 0          排序" + Chr(13) + Chr(13)
        myConst = myConst + " 说明：组合方式 1XX/2XX/4XX>YY" + Chr(13)
        myConst = myConst + "       重命名文件及文件夹，请带参数 -a" + Chr(13)
        myConst = myConst + "       重命名文件夹，请带参数 -b" + Chr(13)
        myConst = myConst + "       重命名文件，无需参数" + Chr(13)
        myText = InputBox(myConst, "", "3复")
        If myText = "" Then Exit Sub
        isAsk = False
    End If
    If isAsk And myCurCommand = "查看/修改属性" Then      '如果查看/修改属性，就不打开了
        '
        '
        '
        '
        '
        '
        '
        '
        If myText = "" Then Exit Sub
        isAsk = False
    End If
    
    
    If myCurCommand = "排序图片" Then
        For i = 1 To s.FoundFiles.Count
            myName = s.FoundFiles(i)
            myName = Split(myName, "\")(UBound(Split(myName, "\")))
            If InStr(myName, "jpg") > 0 Then
                isPic = True
                extensionName = ".jpg"
                extensionMsg = "【J"
            End If
            If InStr(myName, "jpeg") > 0 Then
                isPic = True
                extensionName = ".jpeg"
                extensionMsg = "【E"
            End If
            If InStr(myName, "bmp") > 0 Then
                isPic = True
                extensionName = ".bmp"
                extensionMsg = "【B"
            End If
            If InStr(myName, "gif") > 0 Then
                isPic = True
                extensionName = ".gif"
                extensionMsg = "【G"
            End If
            
            If isPic Then
                extensionMsg = extensionMsg + Trim(str(FileLen(myPath + "\" + myName))) + "】"
                MsgBox ("=" + InStr(myName, "【") + "=")
                newName = myName
                myName = Replace(myName, extensionName, "")
                If InStr(myName, "【") = 1 And myPath = defaultPath Then Exit Sub
                If InStr(myName, "【") = 1 Then extensionMsg = ""
                
                If Dir(defaultPath + "\" + extensionMsg + myName + extensionName) <> "" Then
                    For myInt = 1 To 10
                       newName = myName + "_" + Trim(str(myInt))
                       If Dir(defaultPath + "\" + extensionMsg + newName + extensionName) = "" Then Exit For
                    Next myInt
                End If
                Name myPath + "\" + myName + extensionName As defaultPath + "\" + extensionMsg + newName + extensionName
                isPic = False
            End If
        Next i

        Exit Sub     '结束
    End If
    
    
    
    fileCount = s.FoundFiles.Count
    If fileCount = 0 Then Exit Sub
    ReDim Preserve myAllName(1 To s.FoundFiles.Count)
    For myInt = 1 To s.FoundFiles.Count
        myAllName(myInt) = s.FoundFiles(myInt)
    Next myInt
    
'=================================================================================================================
'=================================================================================================================
'=================================================================================================================
    For i = 1 To fileCount
        myReCommand = myText                 '获取命令集
        If myCurCommand = "文件(夹)重命名" Then      '如果只修改命名，就不打开了
            myName = Split(myAllName(i), "\")(UBound(Split(myAllName(i), "\")))
            If (extensionAllName = "*,") Then extensionName = "." + Split(myName, ".")(UBound(Split(myName, ".")))
            myName = Left(myName, Len(myName) - Len(extensionName))
            isReName = True
            GoTo myNext
        End If
        If myCurCommand = "查看/修改属性" Then      '如果只修改命名，就不打开了
        '
        '
        '
        '
        '
        '
        '
        '
            MsgBox ("")
            
            GoTo myNext
        End If
        extensionName = ".doc"
        Set myDoc = Documents.Open(myAllName(i))
        myName = Replace(ActiveDocument.Name, ".doc", "")     '或者：Split(S.FoundFiles(i), "\")(UBound(Split(S.FoundFiles(i), "\")))
'=================================================================================================================
    Select Case myCurCommand
        Case "导出图片"
            '保存为筛选过的网页
            ActiveDocument.SaveAs FileName:=myName + ".htm", FileFormat:=wdFormatFilteredHTML, LockComments:=False, Password:="", AddToRecentFiles:=True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False, SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:=False
            
        Case "文档解密"
            F8批处理_文档解密
                    
        Case Else
            Exit Sub
    End Select
'=================================================================================================================
' 保存/关闭
     myDoc.Save
     myDoc.Close
'=================================================================================================================
    Select Case myCurCommand
            
        Case "导出图片"
            F8批处理_图片   '可移动重命名里
    End Select
'=================================================================================================================
    If isKillFile Then      '空文检查
        myName = ActiveDocument.FullName
        myDoc.Save
        myDoc.Close
        Kill myName
        isKillFile = False
    End If
myNext:

    If isReName Then
        myCount = myCount + 1
        F8批处理_重命名
        isReName = False
    End If
    
    Next i
 '   MsgBox (extensionName)
 '   MsgBox (extensionNames)
    If (extensionNames <> "" And extensionNames <> "*,") Then GoTo myNextExtensionName
End Sub
Sub F8批处理_图片()
'
' 功能说明：逐个打开word + 处理 + 保存并关闭
    s.LookIn = myPath + "\" + myName + ".files"
    s.FileName = "*.*" '搜索所有文件
    s.Execute '执行搜索
    On Error Resume Next
    
    myCount = s.FoundFiles.Count
    For pi = 1 To s.FoundFiles.Count
        myStr = Split(s.FoundFiles(pi), "\")(UBound(Split(s.FoundFiles(pi), "\")))
        extensionName = Split(s.FoundFiles(pi), ".")(UBound(Split(s.FoundFiles(pi), ".")))   '扩展名
        If Dir(myPath + "\" + myName + "[" + CStr(myCount) + "-" + CStr(pi) + "]." + extensionName) = "" Then
                Name myPath + "\" + myName + ".files\" + myStr As myPath + "\" + myName + "[" + CStr(myCount) + "-" + CStr(pi) + "]." + extensionName
        Else
            Kill myPath + "\" + myName + ".files\" + myStr    '图片存在
        End If
    Next pi
    Kill myPath + "\" + myName + ".htm"           '删除文件
    If Dir(myPath + "\" + myName + ".files", vbDirectory) <> "" And Dir(myPath + "\" + myName + ".files\*") = "" Then
        RmDir myPath + "\" + myName + ".files"    '删除目录
    End If
End Sub
Sub F8批处理_重命名()
' 重命名
    If myCurCommand <> "文件(夹)重命名" Then GoTo myend
mystart:
    
    If InStr(myReCommand, "/") > 0 Then     'myCurStr="3xxxx/4yyyy"
        myCurStr = Left(myReCommand, InStr(myReCommand, "/") - 1)                       '当前命令3xxxx
        myReCommand = Right(myReCommand, Len(myReCommand) - InStr(myReCommand, "/"))    '剩余命令4yyyy
    Else
        If myReCommand = "" Then Exit Sub
        myCurStr = myReCommand
        myReCommand = ""
    End If
    
    myStr = Left(myCurStr, 1)                       '当前命令3
    myCurStr = Right(myCurStr, Len(myCurStr) - 1)   '当前参数xxxx
    Select Case myStr
        Case "1"    'XX        前加XX
            myNewName = myCurStr + myName
            
        Case "2"    'XX        部分前加XX
            If InStr(myCurStr, "^I") > 0 Then   '用"^I"表示"\"
                myCurStr = Replace(myCurStr, "^I", "\")
                myNewName = myCurStr + myName
            Else
                If InStr(myName, "：") < 1 And InStr(myName, "-") < 1 And InStr(myName, "【") < 1 Then
                    myNewName = myCurStr + myName
                Else
                    If InStr(myName, "：") > 1 And InStr(myName, "：") < 6 Then
                        myNewName = Left(myCurStr, 1) + Mid(myName, 1, InStr(myName, "：") - 1) + Right(myCurStr, 1) + Mid(myName, InStr(myName, "：") + 1)
                    End If
                End If
            End If
            
        Case "3"    'XX        删去XX
            myNewName = Replace(myName, myCurStr, "")
                        
        Case "4"    'XX        删去左边（包括XX）
            If InStr(myName, myCurStr) > 0 And Len(myName) - Len(myCurStr) - InStr(myName, myCurStr) + 1 > 0 Then myNewName = Right(myName, Len(myName) - Len(myCurStr) - InStr(myName, myCurStr) + 1)
                        
        Case "5"    'XX        删去右边（包括XX）
            If InStr(myName, myCurStr) > 0 And InStr(myName, myCurStr) - 1 > 0 Then myNewName = Left(myName, InStr(myName, myCurStr) - 1)
            
        Case "6"    'XX>YY     XX换成YY
            If InStr(myCurStr, ">") = 0 Then MsgBox ("error"): Exit Sub
            myNewName = Replace(myName, Left(myCurStr, InStr(myCurStr, ">") - 1), Right(myCurStr, Len(myCurStr) - InStr(myCurStr, ">")))
            
        Case "7"    'XX     后加XX
            myNewName = myName + myCurStr
            
        Case "8"    '标点换成中文
            myNewName = Replace(myName, "(", "（")
            myNewName = Replace(myNewName, ")", "）")
            myNewName = Replace(myNewName, ",", "，")
            myNewName = Replace(myNewName, ":", "：")
            myNewName = Replace(myNewName, ";", "；")
            myNewName = Replace(myNewName, "[", "［")
            myNewName = Replace(myNewName, "]", "］")
            myNewName = Replace(myNewName, "--", ChrW(-24150) + ChrW(-24150))
            myNewName = Replace(myNewName, "-", "－")
            myNewName = Replace(myNewName, "____", ChrW(-24150) + ChrW(-24150))    '即长划线
            myNewName = Replace(myNewName, "标题：", "")
            myNewName = Replace(myNewName, "［转贴］", "")
            myNewName = Replace(myNewName, "（图）", "")
            myNewName = Replace(myNewName, "（重复1）", "")
            myNewName = Replace(myNewName, "［组图］", "")
            myNewName = Replace(myNewName, "［带图表］", "")
            
        Case "9"    '标点删空格
            myNewName = Replace(myNewName, Chr(32), "")
            myNewName = Replace(myNewName, Chr(-24159), "")
            
        Case "0"    '排序
            myNewName = Split(myPath, "\")(UBound(Split(myPath, "\")))
            myNewName = myNewName + Trim(str(myCount))
            
        Case Else
            MsgBox ("error!myStr=" + myStr): Exit Sub
    End Select
myend:
    myNewName = Trim(myNewName)
    If (myName <> myNewName Or InStr(myPath, "图表类") > 0) And myNewName <> "" Then
'       extensionName = ".doc"
        If Dir(myPath + "\" + myNewName + extensionName) = "" Then
            Name defaultPath + "\" + myName + extensionName As myPath + "\" + myNewName + extensionName
        Else
            For myInt = 1 To 10
                If Dir(myPath + "\" + myNewName + "（重复" + CStr(myInt) + "）" + extensionName) = "" Then
                     Name defaultPath + "\" + myName + extensionName As myPath + "\" + myNewName + "（重复" + CStr(myInt) + "）" + extensionName
                     Exit For
                End If
            Next myInt
        End If
        myName = myNewName      ' 如果要修改两次名称，必须指定 myName 的变化
        myNewName = ""
    End If
    If myCurCommand = "文件(夹)重命名" Then GoTo mystart
End Sub
Sub F8批处理_文档解密()
' 功能说明：逐个打开word + 处理 + 保存并关闭
    Dim s As FileSearch     '定义一个文件搜索对象
    Set s = Application.FileSearch
    If myPath = "" Then myPath = "C:\Documents and Settings\Administrator\桌面\00"     '注意路径，换成你实际的路径
    s.LookIn = myPath
    s.FileName = "*.doc" '搜索所有文件
    s.Execute '执行搜索
    
    Dim wordApp As Object
    Dim myDoc As Object
    Set wordApp = CreateObject("word.application")
    For i = 1 To s.FoundFiles.Count
        Set myDoc = wordApp.Documents.Open(s.FoundFiles(i))    '打开指定路径的Word文件，进行编辑
        wordApp.Visible = True
        myDoc.Range.Copy
        ActiveDocument.Range.Paste
        myDoc.Save
        myDoc.Close
    Next
    wordApp.Quit
End Sub
Sub F0字体段落()
'
    If Selection.Range.Start = Selection.Range.End Then
        Selection.WholeStory    '全选
    End If
    With Selection.Font
        .NameFarEast = "宋体"
        .NameAscii = "Times New Roman"
        .NameOther = "Times New Roman"
        .Name = "Times New Roman"
        .Size = 9
 ' 字体对照表：大特号：63；特号：54；初号：42；小初号：36；大一号：31.5；
 '一号：28；二号：21；小二号：18；三号：16；四号：14；小四号：12；
 '五号：10.5；小五号：9；六号：8；小六号：6.875；七号：5.25；八号：4.5；

        .Color = wdColorBlack        'wdColorRed
 '       .Engrave = False
 '       .Superscript = False
 '       .Subscript = False
        .Spacing = 0        '字符间距：0.1（单位），默认为0
        .Scaling = 100       '字符缩放：1（单位），默认为100
        .Position = 0        '字符提升：1（单位），默认为0
 '      .Bold = False
        .Italic = False
 '      .Underline = wdUnderlineNone
 '      .Parent.ParagraphFormat.Alignment = wdAlignParagraphCenter
    End With
    With Selection.ParagraphFormat
        .LeftIndent = CentimetersToPoints(0)
        .RightIndent = CentimetersToPoints(0)
        .SpaceBefore = 0
        .SpaceAfter = 0
        .SpaceBeforeAuto = False    '
        .SpaceAfterAuto = False    '
        .LineSpacingRule = wdLineSpaceSingle    '单倍行距：wdLineSpaceSingle，1.5倍：wdLineSpace1pt5；多倍：wdLineSpaceMultiple
        If myBool = False Then
            .Alignment = wdAlignParagraphJustify    '两端对齐，居中：wdAlignParagraphCenter；两端：wdAlignParagraphJustify；分散：wdAlignParagraphDistribute
        End If
'        .KeepWithNext = False
'        .KeepTogether = False
'        .PageBreakBefore = False
'        .NoLineNumber = False
'        .Hyphenation = True
        .FirstLineIndent = CentimetersToPoints(0)        ' 医学设置为0.35；0.18
        .OutlineLevel = wdOutlineLevelBodyText        ' 医学设置为wdOutlineLevelBodyText，大纲级别，如wdOutlineLevel1
'       .LineSpacing = LinesToPoints(0.25)
        .CharacterUnitLeftIndent = 0    '段前 0.5
        .CharacterUnitRightIndent = 0    '段后    0.5
        .CharacterUnitFirstLineIndent = 0        ' 医学首行缩进设置为2
        .LineUnitBefore = 0        ' 导游段前设置为0.5
        .LineUnitAfter = 0
        .AutoAdjustRightIndent = True        '自动调整右缩进
        .DisableLineHeightGrid = False        '对齐网格
'        .FarEastLineBreakControl = True
        .WordWrap = True
'        .HangingPunctuation = True
'        .HalfWidthPunctuationOnTopOfLine = False
'        .AddSpaceBetweenFarEastAndAlpha = True
'        .AddSpaceBetweenFarEastAndDigit = True
'        .BaseLineAlignment = wdBaselineAlignAuto
'        With .Borders(wdBorderLeft)    '段落边框设置
'            .LineStyle = wdLineStyleSingle
'            .LineWidth = wdLineWidth075pt
'            .Color = wdColorAutomatic
'        End With
'        With .Borders
'            .DistanceFromTop = 0
'            .DistanceFromLeft = 0
'            .DistanceFromBottom = 0
'            .DistanceFromRight = 0
'            .Shadow = False
'        End With
'       .Borders(-3).LineStyle = 1    '设置段落边框为下划线
'       .Borders(-3).LineWidth = 18      '边框宽度
'       .Borders(-3).Color = wdColorBlue
        With .Shading       '设置底纹为无色
            .Texture = wdTextureNone
            .ForegroundPatternColor = wdColorAutomatic
            .BackgroundPatternColor = wdColorAutomatic
        End With
    End With
'
'   Selection.Font.Name = "宋体"
'   Selection.Font.Size = 9
'   Selection.Font.Color = wdColorPlum
'   Selection.Find.ClearFormatting
'   Selection.Find.Replacement.ClearFormatting
End Sub
Sub F0保存()
    Dim strtext As String, currPath As String
    Dim i As Integer, pi As Integer, WidthExHeight As Single
    Dim newName As String
    
'   If Application.Documents.Count > 0 And ActiveDocument.Path <> "" Then ChangeFileOpenDirectory ActiveDocument.Path   '固定保存目录
    If Trim(Replace(ActiveDocument.Range.Text, Chr(13), "")) = "" Then Exit Sub '空文检查
    Selection.WholeStory
    If ActiveDocument.InlineShapes.Count > 0 Then   '表格大小调整不一定好
        For i = 1 To Selection.InlineShapes.Count
            WidthExHeight = Selection.InlineShapes(i).Width / Selection.InlineShapes(i).Height
            If Selection.InlineShapes(i).Height > 350 Then
                Selection.InlineShapes(i).Height = 350   '大小/高度，284=10厘米
                Selection.InlineShapes(i).Width = Selection.InlineShapes(i).Height * WidthExHeight
            End If
            If Selection.InlineShapes(i).Width > 280 Then
                Selection.InlineShapes(i).Width = 280   '大小/宽度，227=8厘米
                Selection.InlineShapes(i).Height = Selection.InlineShapes(i).Width / WidthExHeight
            End If
        Next i
    End If
' 第一段包含标题，就拆分
    If False And InStr(ActiveDocument.Paragraphs(1).Range.Text, "【") > 0 Then   ' And ActiveDocument.Paragraphs(1).Range.End > 40
        If InStr(ActiveDocument.Paragraphs(1).Range.Text, "【") < 60 Then   ' And ActiveDocument.Paragraphs(1).Range.Characters(InStr(ActiveDocument.Paragraphs(1).Range.Text, "【") - 1) = Chr(32)
            'ActiveDocument.Paragraphs(1).Range.Characters(InStr(ActiveDocument.Paragraphs(1).Range.Text, "【")) = Chr(13) + "　　"
            ActiveDocument.Paragraphs(1).Range.Characters(InStr(ActiveDocument.Paragraphs(1).Range.Text, "【")) = Chr(13) + Chr(13) + "　　【"
        Else
            ActiveDocument.Paragraphs(1).Range.Characters(InStr(ActiveDocument.Paragraphs(1).Range.Text, " ")) = Chr(13) + "　　"
        End If
    End If
' 文件名包含"复件"、"文档"，就改名
    If InStr(ActiveDocument.Name, "复件") < 1 And InStr(ActiveDocument.Name, "文档") < 1 And isReName = False Then
        currPath = ActiveDocument.Path
        myName = ActiveDocument.Name
        If False And (ActiveDocument.InlineShapes.Count > 0 Or ActiveDocument.Tables.Count > 0) And InStr(ActiveDocument.Name, "［带图表］") < 1 Then
            ActiveDocument.Save
            ActiveDocument.Close
            If Dir(currPath + "\" + Replace(myName, ".doc", "") + "［带图表］.doc") = "" Then
                Name currPath + "\" + myName As currPath + "\" + Replace(myName, ".doc", "") + "［带图表］.doc"
            Else
                For myInt = 1 To 10
                    newName = Replace(myName, ".doc", "") + "［带图表］（重复" + myInt + "）.doc"
                    If Dir(newName) = "" Then
                         Name currPath + "\" + myName As currPath + "\" + newName
                         Exit For
                    End If
                Next myInt
            End If
            Documents.Open (currPath + "\" + Replace(myName, ".doc", "") + "［带图表］.doc")
'            Application.Documents(1).Activate
'           Kill Replace(ActiveDocument.Name, "［带图表］.doc", "") + ".doc"    '删不掉
        Else
            ActiveDocument.Save
        End If
        GoTo 关闭
    End If
    
' 获取标题
    myBool = True
    If False And ActiveDocument.Tables.Count > 0 Then    '多余表格框架的处理
        If Replace(ActiveDocument.Range(1, 10).Text, Chr(13), "") = Replace(Left(Replace(ActiveDocument.Tables(1).Range.Text, Chr(7), ""), 10), Chr(13), "") Then
            myBool = False
            '功能（表格分离……未实现）
            myInt = 1
            Do
                strtext = Split(ActiveDocument.Range.Text, Chr(13))(myInt)
                myInt = myInt + 1
            Loop While Trim(strtext) = ""
        End If
    End If
    If myBool Then
        For pi = 1 To 3
    '        ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, Chr(13), "")      '等于删空行
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, Chr(11), Chr(13))
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "*", "＊")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "?", "？")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "[", "［")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "]", "］")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, ":", "：")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "/", "／")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "\", "／")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "|", "｜")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "<", "＜")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, ">", "＞")
            ActiveDocument.Paragraphs(pi).Range.Text = Replace(ActiveDocument.Paragraphs(pi).Range.Text, "--", "--")
            strtext = ActiveDocument.Paragraphs(pi).Range.Text
            strtext = Replace(strtext, Chr(13), "")
            strtext = Replace(strtext, Chr(1), "")
            strtext = Replace(strtext, Chr(2), "")
            strtext = Replace(strtext, Chr(3), "")
            strtext = Replace(strtext, Chr(4), "")
            strtext = Replace(strtext, Chr(5), "")
            strtext = Replace(strtext, Chr(6), "")
            strtext = Trim(strtext)
            If strtext <> "" Then
                 Exit For
            End If
        Next pi
    End If
    
'修改保存目录
    currPath = ActiveDocument.Path
    If False And InStr(ActiveDocument.Path, "文档") > 0 And InStr(ActiveDocument.Path, "桌面") > 0 Then
        ChangeFileOpenDirectory "C:\Documents and Settings\Administrator\桌面"       '修改保存目录
        Application.Dialogs(wdDialogFileSaveAs).Show (10000)      '其他：.Execute
    End If
'选择：直接保存或者重命名
    If strtext = "" Or LenB(strtext) > 204 Then
        MsgBox ("文件名错误！")
        Exit Sub    '如果不结束：strtext = "空（重命名）.doc"
    End If
    Application.Documents(1).Activate
    If isReName = True Then
        If Replace(ActiveDocument.Name, ".doc", "") <> strtext Then
            myNewName = ActiveDocument.Name
        Else
            GoTo 关闭:
        End If
    End If
    If Dir(strtext + ".doc") = "" Then
        ActiveDocument.SaveAs FileName:=strtext + ".doc"
    Else
        For myInt = 1 To 10
            myName = myInt
            If Dir(strtext + "（重复" + myName + "）.doc") = "" Then
                 ActiveDocument.SaveAs FileName:=strtext + "（重复" + myName + "）.doc"
                 Exit For
            End If
        Next myInt
    End If
'    ActiveDocument.SaveAs filename:=strtext + ".doc"
'    Call wordDoc.SaveAs( "E：\" + "attach.txt", wdFormatText)       '另存为文本

关闭:
    Select Case myCommand
    Case "F2"
        If ActiveDocument.Paragraphs.Count = 1 Or (ActiveDocument.Paragraphs.Count = 2 And ActiveDocument.Paragraphs(2).Range.Text = "") Then Exit Sub
        ActiveDocument.Close
    Case "F3"
        Selection.WholeStory
        Selection.MoveRight Unit:=wdCharacter, Count:=1
    Case "F4"
        ActiveDocument.Close
    Case "F5"
        If isClose Then ActiveDocument.Close
        isClose = False
    Case "F12"
        If Replace(myNewName, ".doc", "") <> strtext Then
            ActiveDocument.Close
            Kill myNewName
        End If
    Case Else
    End Select
    myCommand = ""
    isReName = False
End Sub
Sub F10调整()
' 默认为一般试题调整    With Selection.Find
        .Text = Chr(-23648)
        .Replacement.Text = Chr(-24159)
        .Format = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchByte = True
        .MatchWildcards = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll    '怪异全角空格1
    With Selection.Find
        .Text = ChrW(8195)
        .Replacement.Text = Chr(-24159)
        .Format = True
        .Wrap = wdFindContinue
        .Format = True
        .MatchByte = True
        .MatchWildcards = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll    '怪异全角空格2
    With Selection.Find
        .Text = "  "
        .Replacement.Text = Chr(-24159)
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchByte = True
        .MatchWildcards = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    With Selection.Find
        .Text = " "
        .Replacement.Text = " "
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False    '不分格式，所以放在后面
        .MatchCase = False
        .MatchByte = True
        .MatchWildcards = False    'MatchWildcards 必须为 False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll    '怪异半角空格
    If InStr(myCommand, "F") > 0 Or InStr(myCommand, "其他") > 0 Then
        With Selection.Find
            .Text = "^13([!^13^g　 ])"
            .Replacement.Text = "^p　　\1"
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
        With Selection.Find
            .Text = "^13[^13　 ]{3,}"
            .Replacement.Text = "^p　　"
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll     '不空行
        With Selection.Find
            .Text = "^13[^13　 ]{1,}"
            .Replacement.Text = "^p^p　　"
            .MatchByte = True
            .MatchWildcards = True
        End With
        Selection.Find.Execute Replace:=wdReplaceAll     '空行
    End If
End Sub






