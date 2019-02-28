enum Direction
{
	right = 0,
	up = 90,
	left = 180,
	down = 270
}

enum CustomerStatus
{
	waitingForTable = 0,
	followingPlayer = 1,
	decidingOnOrder = 2,
	decidedOnOrder = 3,
	waitingForOrder = 4,
	drinkingOrder = 5,
	waitingForParty = 6,
	leavingShop = 7,
}

enum Order
{
	Espresso = 0,
	Cappuccino = 1,
	CafeLatte = 2,
}

enum Ingredient
{
	Coffee,
	Water,
	LightFoamMilk,
	HeavyFoamMilk,
}

enum InteractableType
{
	Kettle,
	Grinder,
	CupDispenser,
	MilkSteamer,
	Counter
}