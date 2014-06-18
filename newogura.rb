# -*- coding: utf-8 -*-
Plugin.create(:yuiogura) do
  on_appear do |ms|
    ms.each do |m|
if Time.now - m.message[:created] < 5 then
unless m.from_me?() then
#ゆいおぐらガチャ(通常)
if m.message.to_s =~ /((ゆい|唯|ユイ|yui|YUI|ﾕｲ)(ｵｸﾞﾗ|オグラ|ogura|おぐら|OGURA|おぐらちゃん|小倉ちゃん|小倉|ゆい|yui|ﾕｲ)|(ｵｸﾞﾗ|ogura|OGURA|おぐら|小倉|オグラ)(ﾕｲ|ゆい|唯|ユイ|YUI|yui|ゆいちゃん|唯ちゃん|ﾕｲちゃん|ﾕｲﾁｬﾝ)|台乙|台乙先生|ゆい\(\*-v・\)ゆい|唯ちゃん|おぐゆい|だいおつ|だい\(\*-v・\)おつ)(ガチャ|がちゃ|ｶﾞﾁｬ)|がちゃおぐら|EXcmd/
m.favorite
count = 0
fp = open(File.expand_path('../list.txt',__FILE__))
while fp.gets
count += 1
end
open(File.expand_path('../list.txt',__FILE__)) do |f|
Service.primary.post(:message =>"#{"@" + m.user.idname} " + f.readlines[rand(count)], :replyto => m)
end 
end

#ゆいおぐらガチャ(応援)
if m.message.to_s =~ /もう(ダメ|だめ)だ/
m.favorite
count = 0
fp = open(File.expand_path('../list.txt',__FILE__))
while fp.gets
count += 1
end
open(File.expand_path('../list.txt',__FILE__)) do |f|
Service.primary.post(:message =>"#{"@" + m.user.idname} がんばって！\n" + f.readlines[rand(count)], :replyto => m)
end     
end

#ゆいおぐらガチャ(10連)
if m.message.to_s =~ /ゆいおぐら10連ガチャ/
m.favorite
count = 0
fp = open(File.expand_path('../list.txt',__FILE__))
while fp.gets
count += 1
end
10.times do
open(File.expand_path('../list.txt',__FILE__)) do |f|
Service.primary.post(:message =>"#{"@" + m.user.idname} " + f.readlines[rand(count)], :replyto => m)
sleep 1
end
end
end


end
end
end
end
end
