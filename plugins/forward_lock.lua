do
local function pre_process(msg)
-----------
	local hash = 'mate:'..msg.to.id
-----------
	
	if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg) then
		delete_msg(msg.id, ok_cb, true)
            return ""
	end
        return msg
    end

local function run(msg, matches)
---------
	local hash = 'mate:'..msg.to.id
---------
if msg.to.type == "channel" then

if is_momod(msg) and matches[1] == "lock" and mathces[2] == "fwd" and not matches[3] then
	if redis:get(hash) then
		return "🔒 قفل فروارد فعال میباشد 🔒"
	else
			redis:set(hash, true)
				return "🔒 فروارد گروه قفل شد 🔒"
	end
if is_momod(msg) and matches[1] == "unlock" and mathces[2] == "fwd" and not matches[3] then
	if redis:get(hash) then
			redis:del(hash)
		return "🔓 قفل فروارد غیر فعال شد 🔓"
	else
		return "🔓 قفل فروارد غیر فعال میباشد 🔓"
	end
end

else
	return "🚫 این دستور فقط در سوپر گروه امکان پذیر است 🚫"
			end
	
		end

	end

end

return {
    patterns = {
        '^[/!#](lock) (fwd)$',
        '^[/!#](unlock) (fwd)$'
    },
    run = run,
    pre_process = pre_process
}

end