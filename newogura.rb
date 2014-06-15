# -*- coding: utf-8 -*-
Plugin.create(:yuiogura) do
  on_appear do |ms|
    ms.each do |m|
if Time.now - m.message[:created] < 5 then
#ゆいおぐらガチャ(通常)
if m.message.to_s =~ /((ゆい|唯|ユイ|yui|YUI|ﾕｲ)(ｵｸﾞﾗ|オグラ|ogura|おぐら|OGURA|おぐらちゃん|小倉ちゃん|小倉|ゆい|yui|ﾕｲ)|(ｵｸﾞﾗ|ogura|OGURA|おぐら|小倉|オグラ)(ﾕｲ|ゆい|唯|ユイ|YUI|yui|ゆいちゃん|唯ちゃん|ﾕｲちゃん|ﾕｲﾁｬﾝ)|台乙|台乙先生|ゆい\(\*-v・\)ゆい|唯ちゃん|おぐゆい|だいおつ|だい\(\*-v・\)おつ)(ガチャ|がちゃ|ｶﾞﾁｬ)|がちゃおぐら|EXcmd/
 open(File.expand_path('../list.txt',__FILE__)) do |f|
Service.primary.post(:message =>"#{"@" + m.user.idname} " + f.readlines[rand(290)], :replyto => m)
end 
end
#ゆいおぐらガチャ(応援)
if m.message.to_s =~ /もう(ダメ|だめ)だ/
open(File.expand_path('../list.txt',__FILE__)) do |f|
Service.primary.post(:message =>"#{"@" + m.user.idname} がんばって！\n" + f.readlines[rand(290)], :replyto => m)
end     
   end
#ゆいおぐらガチャ(10連)
if m.message.to_s =~ /ゆいおぐら10連ガチャ/
10.times { 
open(File.expand_path('../list.txt',__FILE__)) do |f|
Service.primary.post(:message =>"#{"@" + m.user.idname} " + f.readlines[rand(290)], :replyto => m)
end
sleep 1
}
	    
   end

end
end
end
end
