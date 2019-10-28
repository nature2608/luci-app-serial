    local map, section
    
    map = Map("series", translate("需要输入正确的解锁码才会出现锐捷认证客户端"), translate("需要解锁码请联系："))
    map.title="校园网认证"
    
    section = map:section(TypedSection, "SN")
    section.anonymous = true
    
    section:tab("general", translate("解锁码"))

    mac =section:taboption("general", DummyValue, "mac", translate("正在使用的mac地址："), translate("请保证此mac地址为你需要使用锐捷认证的mac"))
 

    ID = section:taboption("general", DummyValue, "ID", translate("序列号："))
    ID .rmempty = false

    key = section:taboption("general", Value, "key", translate("KEY："))
    key = false
    

    return map