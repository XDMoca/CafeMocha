/// @function get_random_customer_of_type(customerType)
/// @description Returns a random customer of a specified type
/// @arg customerType the customer type of which to spawn

var customerType = argument0;
var index = irandom_range(0,2);
switch(customerType)
{
	case CustomerType.Kaishain:
	{
		switch(index)
		{
			case 0: return obj_customer_kaishain_1;
			case 1: return obj_customer_kaishain_2;
			case 2: return obj_customer_kaishain_3;
		}
	}
	case CustomerType.Seifuku:
	{
		switch(index)
		{
			case 0: return obj_customer_seifuku_1;
			case 1: return obj_customer_seifuku_2;
			case 2: return obj_customer_seifuku_3;
		}
	}
	
}