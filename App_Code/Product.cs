/** 
* The Product class
 *
 * This is just to simulate some way of accessing data about our products
*/
public class Product
{

    public int Id { get; set; }
    public decimal Price { get; set; }
    public string Description { get; set; }

    public Product(int id)
    {
        this.Id = id;
        switch (id)
        {
            case 1:
                this.Price = 19.95m;
                this.Description = "Shoes";
                break;
            case 2:
                this.Price = 9.95m;
                this.Description = "Shirt";
                break;
            case 3:
                this.Price = 14.95m;
                this.Description = "Pants";
                break;
        }
    }

}