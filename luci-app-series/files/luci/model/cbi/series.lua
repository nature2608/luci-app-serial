    local map, section   
    map = Map("series", translate("需要输入正确的解锁码才会出现锐捷认证客户端"),translate("可模拟win客户端和linux客户端\n需要解锁码请联系：QQ260821425"))
    map.title="校园网认证"  
    section = map:section(TypedSection, "SN")
    section.anonymous = true 
    section:tab("general", translate("解锁"))
    mac = section:taboption("general", Value, "mac", translate("请输入锐捷绑定的Mac地址："), translate("请保证此mac地址为你需要使用锐捷认证的mac,若不正确则无法认证,格式如11:22:33:44:aa:bb"))

    ID = section:taboption("general", DummyValue, "ID", translate("序列号："))
    ID.default = 0
    key = section:taboption("general", Value, "key", translate("KEY："))
    key = false

    local apply = luci.http.formvalue("cbi.apply")
    if apply then
        os.execute("/etc/series.sh >/dev/null 2>&1 &") 
    end
    return map

