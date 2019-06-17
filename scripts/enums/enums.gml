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
	Coffee = 0,
	Water = 1,
	Length
}

enum InteractableType
{
	DrinkStation,
	Customer,
	Door
}

enum CustomerType
{
	Kaishain = 0,
	Seifuku = 1,
}

enum TimeOfDay
{
	Morning = 0,
	Afternoon = 1,
	Evening = 2,
	Night = 3
}

enum DayOfWeek
{
	Monday = 0,
	Tuesday = 1,
	Wednesday = 2,
	Thursday = 3,
	Friday = 4,
	Saturday = 5,
	Sunday = 6
}