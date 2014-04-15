-- Boilerplate to support localized strings if intllib mod is installed.
local S
if intllib then
	S = intllib.Getter()
else
	S = function(s) return s end
end

ARMOR_MOD_NAME = minetest.get_current_modname()
dofile(minetest.get_modpath(ARMOR_MOD_NAME).."/armor.lua")
local use_moreores = minetest.get_modpath("moreores")

-- Regisiter Head Armor

minetest.register_tool("3d_armor:helmet_wood", {
	description = S("Wood Helmet"),
	inventory_image = "3d_armor_inv_helmet_wood.png",
	groups = {armor_head=5, armor_heal=0, armor_use=2000},
	wear = 0,
})

minetest.register_tool("3d_armor:helmet_steel", {
	description = S("Steel Helmet"),
	inventory_image = "3d_armor_inv_helmet_steel.png",
	groups = {armor_head=10, armor_heal=0, armor_use=500},
	wear = 0,
})

minetest.register_tool("3d_armor:helmet_bronze", {
	description = S("Bronze Helmet"),
	inventory_image = "3d_armor_inv_helmet_bronze.png",
	groups = {armor_head=10, armor_heal=6, armor_use=250},
	wear = 0,
})

minetest.register_tool("3d_armor:helmet_diamond", {
	description = S("Diamond Helmet"),
	inventory_image = "3d_armor_inv_helmet_diamond.png",
	groups = {armor_head=15, armor_heal=12, armor_use=100},
	wear = 0,
})

if use_moreores then
	minetest.register_tool("3d_armor:helmet_mithril", {
		description = S("Mithril Helmet"),
		inventory_image = "3d_armor_inv_helmet_mithril.png",
		groups = {armor_head=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

-- Regisiter Torso Armor

minetest.register_tool("3d_armor:chestplate_wood", {
	description = S("Wood Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_wood.png",
	groups = {armor_torso=10, armor_heal=0, armor_use=2000},
	wear = 0,
})

minetest.register_tool("3d_armor:chestplate_steel", {
	description = S("Steel Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_steel.png",
	groups = {armor_torso=15, armor_heal=0, armor_use=500},
	wear = 0,
})

minetest.register_tool("3d_armor:chestplate_bronze", {
	description = S("Bronze Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_bronze.png",
	groups = {armor_torso=15, armor_heal=6, armor_use=250},
	wear = 0,
})

minetest.register_tool("3d_armor:chestplate_diamond", {
	description = S("Diamond Chestplate"),
	inventory_image = "3d_armor_inv_chestplate_diamond.png",
	groups = {armor_torso=20, armor_heal=12, armor_use=100},
	wear = 0,
})

if use_moreores then
	minetest.register_tool("3d_armor:chestplate_mithril", {
		description = S("Mithril Chestplate"),
		inventory_image = "3d_armor_inv_chestplate_mithril.png",
		groups = {armor_torso=20, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

-- Regisiter Leg Armor

minetest.register_tool("3d_armor:leggings_wood", {
	description = S("Wood Leggings"),
	inventory_image = "3d_armor_inv_leggings_wood.png",
	groups = {armor_legs=5, armor_heal=0, armor_use=2000},
	wear = 0,
})

minetest.register_tool("3d_armor:leggings_steel", {
	description = S("Steel Leggings"),
	inventory_image = "3d_armor_inv_leggings_steel.png",
	groups = {armor_legs=15, armor_heal=0, armor_use=500},
	wear = 0,
})

minetest.register_tool("3d_armor:leggings_bronze", {
	description = S("Bronze Leggings"),
	inventory_image = "3d_armor_inv_leggings_bronze.png",
	groups = {armor_legs=15, armor_heal=6, armor_use=250},
	wear = 0,
})

minetest.register_tool("3d_armor:leggings_diamond", {
	description = S("Diamond Leggings"),
	inventory_image = "3d_armor_inv_leggings_diamond.png",
	groups = {armor_legs=20, armor_heal=12, armor_use=100},
	wear = 0,
})

if use_moreores then
	minetest.register_tool("3d_armor:leggings_mithril", {
		description = S("Mithril Leggings"),
		inventory_image = "3d_armor_inv_leggings_mithril.png",
		groups = {armor_legs=20, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

-- Regisiter Boots

minetest.register_tool("3d_armor:boots_wood", {
	description = S("Wood Boots"),
	inventory_image = "3d_armor_inv_boots_wood.png",
	groups = {armor_feet=5, armor_heal=0, armor_use=2000},
	wear = 0,
})

minetest.register_tool("3d_armor:boots_steel", {
	description = S("Steel Boots"),
	inventory_image = "3d_armor_inv_boots_steel.png",
	groups = {armor_feet=10, armor_heal=0, armor_use=500},
	wear = 0,
})

minetest.register_tool("3d_armor:boots_bronze", {
	description = S("Bronze Boots"),
	inventory_image = "3d_armor_inv_boots_bronze.png",
	groups = {armor_feet=10, armor_heal=6, armor_use=250},
	wear = 0,
})

minetest.register_tool("3d_armor:boots_diamond", {
	description = S("Diamond Boots"),
	inventory_image = "3d_armor_inv_boots_diamond.png",
	groups = {armor_feet=15, armor_heal=12, armor_use=100},
	wear = 0,
})

if use_moreores then
	minetest.register_tool("3d_armor:boots_mithril", {
		description = S("Mithril Boots"),
		inventory_image = "3d_armor_inv_boots_mithril.png",
		groups = {armor_feet=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end

-- Register Craft Recipies

local craft_ingreds = {
	wood = "default:wood",
	steel = "default:steel_ingot",
	bronze = "default:bronze_ingot",
	diamond = "default:diamond",
}

if use_moreores then
	craft_ingreds.mithril = "moreores:mithril_ingot"
end

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "3d_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "3d_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "3d_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
end

