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

//Also used as index for sprite to show
enum CupContents
{
	EmptyCup = 0,
	Espresso = 1,
	Cappuccino = 2,
}

enum Ingredient
{
	Coffee,
	Water,
	LightFoamMilk,
	HeavyFoamMilk
}

enum InteractableType
{
	Counter,
	DrinkStation,
}

enum CustomerType
{
	Kaishain = 0,
	Seifuku = 1,
}