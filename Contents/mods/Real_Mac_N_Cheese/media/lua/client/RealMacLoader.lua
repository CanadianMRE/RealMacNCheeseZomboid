if getActivatedMods():contains("ItemTweakerAPI") then
	require("ItemTweaker_Core");
else return end

-- Modifying mac and cheese box. Gotta cook now or it kinda stinks
TweakItem("Base.Macandcheese", "UnhappyChange", "30");
TweakItem("Base.Macandcheese", "EvolvedRecipe", "PotMacNCheese:40;PanMacNCheese:20");
TweakItem("Base.RoughMacNCheese", "EvolvedRecipe", "PotMacNCheese:40;PanMacNCheese:20");

local allEvolvedRecipes = {
	"WaterMacNCheeseSaucepan",
	"WaterMacNCheesePot"
}

-- Adding items to mac n cheese evolved recipes
local toModify = {
	["Base.Cheese"] = "5",
	
	-- Beans
	["Base.DriedBlackBeans"] = "10",
	["Base.DriedChickpeas"] = "10",
	["Base.DriedLentils"] = "10",
	["Base.DriedKidneyBeans"] = "10",
	["Base.DriedSplitPeas"] = "10",
	["Base.DriedWhiteBeans"] = "10",
	["Base.Blackbeans"] = "10",
	["Base.OpenBeans"] = "8",
	
	-- Meats
	["Base.TunaTinOpen"] = "18",
	["Base.MeatPatty"] = "20",
	["Base.Sausage"] = "20",
	
	-- Spices
	["Base.Pepper"] = "1",
	["Base.Salt"] = "1",
	["Base.Ketchup"] = "2",
	["Base.Butter"] = "4",
	
	-- Berries
	["Base.BerryBlack"] = "10",
	["Base.BerryBlue"] = "10",
	["Base.BerryGeneric1"] = "5",
	["Base.BerryGeneric2"] = "10",
	["Base.BerryGeneric3"] = "10",
	["Base.BerryGeneric4"] = "10",
	["Base.BerryGeneric5"] = "10",
	["Base.BerryPoisonIvy"] = "5",
	["Base.HollyBerry"] = "10",
	["Base.BerryBlue"] = "10",
	
	-- Forages
	["Base.WildGarlic2"] = "1",
	["Base.CommonMallow"] = "1",
	["Base.LemonGrass"] = "1",
	["Base.BlackSage"] = "1",
	["Base.Ginseng"] = "1",
	["Base.Worm"] = "2",
	["Base.Rosehips"] = "2",
	["Base.GrapeLeaves"] = "4",
	["Base.Violets"] = "2",
	["Base.Cockroach"] = "5",
	["Base.Cricket"] = "5",
	["Base.Grasshopper"] = "5",
	["Base.WildGarlic2"] = "1",

	
	-- Bugs
	["Base.Maggots"] = "1",
	["Base.Maggots2"] = "1",
	["Base.Millipede"] = "5",
	["Base.Millipede2"] = "5",
	["Base.Pillbug"] = "1",
	["Base.MonarchCaterpillar"] = "5",
	["Base.SawflyLarva"] = "5",
	["Base.SilkMothCaterpillar"] = "5",
	["Base.SwallowtailCaterpillar"] = "5",
	["Base.Termites"] = "1",
	["Base.Slug"] = "5",
	["Base.Slug2"] = "5",
	["Base.Snail"] = "5",
}

for path, amount in pairs(toModify) do
	local newRecipe = "";
	
	for i, eRecipe in pairs(allEvolvedRecipes) do
		newRecipe = newRecipe .. eRecipe .. ":" .. amount;
		
		if (allEvolvedRecipes[i + 1] ~= nil) then
			newRecipe = newRecipe .. ";";
		end;
	end;
	
	TweakItem(path, "EvolvedRecipe", newRecipe);
end;