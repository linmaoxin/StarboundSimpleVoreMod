require "/scripts/vore/npcvore.lua"

head = "newtpurplehead"
legs = "newtpurplelegs"

fullhead = "newtpurpleheadbelly1"

playerLines = {	"...You tasty...",
				"...So full...",
				"...Squirm more...",
				"...I... Love you...",
				"...I'm happy...",
				"...Yum..."
}

function loseHook()
	
	if isPlayer then
		entity.say("...Come back...")
	end
	
	isPlayer = false
	
end

function updateHook()

	if isPlayer and math.random(300) == 1 then
		entity.say( playerLines[math.random(#playerLines)])
	end
	
	if fed then
		if stopWatch >= 2 then
			entity.setItemSlot( "chest", "newtpurplechest" )
			entity.setItemSlot( "legs", "newtpurplelegsbelly" )
		elseif	stopWatch >=1 then			
			entity.setItemSlot( "chest", "newtpurplechestbelly" )
			entity.setItemSlot( "head", "newtpurpleheadbelly2" )
		end
	end

end