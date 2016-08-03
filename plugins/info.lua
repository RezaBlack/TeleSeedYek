-- Info PluGin By @TeleExe :)
-- Cli Bot ID : @SezarBT


function run(msg,matches)
	
	if msg.from.phone then
				numberorg = string.sub(msg.from.phone, 3)
				number = "****0"..string.sub(numberorg, 0,6)
				if string.sub(msg.from.phone, 0,2) == '98' then
					number = number.."\n🏁 کشور : ایران 🇮🇷"
					if string.sub(msg.from.phone, 0,4) == '9891' then
						number = number.."\n💎 نوع سیمکارت : همراه اول"
					elseif string.sub(msg.from.phone, 0,5) == '98932' then
						number = number.."\n💎 نوع سیمکارت : تالیا"
					elseif string.sub(msg.from.phone, 0,4) == '9893' then
						number = number.."\n💎 نوع سیمکارت : ایرانسل"
					elseif string.sub(msg.from.phone, 0,4) == '9890' then
						number = number.."\n💎 نوع سیمکارت : ایرانسل"
					elseif string.sub(msg.from.phone, 0,4) == '9892' then
						number = number.."\n💎 نوع سیمکارت : رایتل"
					else
						number = number.."\n💎 نوع سیمکارت : سایر"
					end
				else
					number = number.."\n🏁 کشور : خارج از ایران\n💎 نوع سیمکارت : متفرقه"
				end
			else
				number = "-----"
			
	end
	
local url , res = http.request('http://api.gpmod.ir/time/')
local jdat = json:decode(url)

--	local userphone = "****0"..user1phone
		local uhash = 'user:'..msg.from.id

	local text = "👥 نام گروه : "..msg.to.print_name.."\n⚡️ آیدی گروه : "..(msg.to.id or "---").."\n\n🏵 نام کوچک : "..(msg.from.first_name or '---').."\n🎗 فامیل : "..(msg.from.last_name or '---').."\n📍 نام کاربری : @"..(msg.from.username or '---').."\n📌 آیدی شما : "..(msg.from.id or "---").."\n📞 شماره تلفن : "..number.."\n\n⏰ ساعت : "..(jdat.FAtime or "---").."\n🗓 تاریخ شمسی : "..(jdat.FAdate or "---").."\n📆 تاریخ میلادی : "..(jdat.ENdate or "---")

if matches[1] == "info" then
	return text
	end
	end

return {
patterns = {
	"^[/!#](info)$",
	},
	run = run
}

-- Info PluGin By @TeleExe :)
-- Cli Bot ID : @SezarBT
