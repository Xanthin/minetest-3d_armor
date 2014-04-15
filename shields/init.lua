-- Boilerplate to support localized strings if intllib mod is installed.
local S
if intllib then
	S = intllib.Getter()
else
	S = function(s) return s end
end

local use_moreores = minetest.get_modpath("moreores")

-- Regisiter Shields

minetest.register_tool("shields:shield_wood", {
	description = S("Wooden Shield"),
	inventory_image = "shields_inv_shield_wood.png",
	groups = {armor_shield=5, armor_heal=0, armor_use=2000},
	wear = 0,
})

minetest.register_tool("shields:shield_steel", {
	description = S("Steel Shield"),
	inventory_image = "shields_inv_shield_steel.png",
	groups = {armor_shield=10, armor_heal=0, armor_use=500},
	wear = 0,
})

minetest.register_tool("shields:shield_bronze", {
	description = S("Bronze Shield"),
	inventory_image = "shields_inv_shield_bronze.png",
	groups = {armor_shield=10, armor_heal=6, armor_use=250},
	wear = 0,
})

minetest.register_tool("shields:shield_diamond", {
	description = S("Diamond Shield"),
	inventory_image = "shields_inv_shield_diamond.png",
	groups = {armor_shield=15, armor_heal=12, armor_use=100},
	wear = 0,
})

if use_moreores then
	minetest.register_tool("shields:shield_mithril", {
		description = S("Mithril Shield"),
		inventory_image = "shields_inv_shield_mithril.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

local craft_ingreds = {
	wood = "default:wood",
	steel = "default:steel_ingot",
	bronze = "default:bronze_ingot",
	diamond = "default:diamond",
}	

if has_moreores then
	craft_ingreds.mithril = "moreores:mithril_ingot"
end

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "shields:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end

minetest.after(0, function()
	table.insert(armor.elements, "shield")
end)

 
