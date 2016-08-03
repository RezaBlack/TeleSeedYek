local function history(extra, suc, result)
	for i=1, #result do
	delete_msg(result[i].id, ok_cb, false)
	end

if tonumber(extra.con) == #result then
	send_msg(extra.chatid, ''..#result..' پیام اخیر سوپر گروه حذف شد', ok_cb, false)
else
	send_msg(extra.chatid, 'تمام پیام های سوپر گروه حذف شد', ok_cb, false)
end
end

local function run(msg, matches)
if matches[1] == "rm" and is_momod(msg) then
	if msg.to.type == 'channel' then
		if tonumber(matches[2]) > 99 or tonumber(matches[2]) < 1 then
            return "🚫 خطا عدد انتخاب شده باید زیر 100 باشد 🚫"
		end
		get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
	else
			return "❌ اجرای این دستور فقط در سوپرگروه ممکن است ❌"
	end
else
	return reply_msg(msg.id,"🚫 شما دسترسی ندارید 🚫",ok_cb,false)
end

end

return {
    patterns = {
        '^[!/#](rm) (%d*)$'
    },
    run = run
}
