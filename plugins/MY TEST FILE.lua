local function run(msg, matches)
	if matches[1] then
return "🔱 S E Z A R 🔱\n\n👤 سازنده : @TeleExe\n"
	end
end

return {
patterns = {
	"^[#!/]([Bb]ot)$",
	"^([Bb]ot)$",
	"^[#!/]([Ss]ezar)$",
	"^[#!/]([Ss]ezar[Bb]ot)$",
	"^([Ss]ezar)$",
	"^([Ss]ezar[Bb]ot)$"
},
	run = run
}
