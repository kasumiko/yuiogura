# -*- coding: utf-8 -*-
Plugin.create :newogura do
  on_appear do |ms|
    ms.each do |m|
if Time.now - m.message[:created] < 5 then
if m.message.to_s =~ /test|推しプレ/
num = rand(0..290)
sol = []
File::open("list.txt"){|content|
content.each_line{[inline]
sol << inline
}
}
putphoto = sol[num]
Service.primary.post(:message =>"#{"@" + m.user.idname} " + putphoto.to_s, :replyto => m)
        end
    end
  end
end
end
