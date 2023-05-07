public class TestOrders {
    public static void main(String[] args) {
    
        // Menu items
        Item item1 = new Item("Mocha", 3.5);
        System.out.printf("%s -- $%.2f\n", item1.name, item1.price);
        Item item2 = new Item("Drip Coffee", 4.25);
        System.out.printf("%s -- $%.2f\n", item2.name, item2.price);
        Item item3 = new Item("Latte", 3.25);
        System.out.printf("%s -- $%.2f\n", item3.name, item3.price);
        Item item4 = new Item("Cappucino", 3);
        System.out.printf("%s -- $%.2f\n", item4.name, item4.price);
        
        
        // Order variables -- order1, order2 etc.
        Order order1 = new Order();
        Order order2 = new Order();
        Order order3 = new Order();
        Order order4 = new Order();
        
        order1.name = "Cindhuri";
        order2.name = "Noah";
        order3.name = "Sam";
        order4.name = "Jimmy";
        
        System.out.println(order1);
        System.out.println(order1.total);
        
        order2.items.add(item1);
        order2.total += item1.price;
        System.out.println(order2.name);
        System.out.println(order2.total);
        
        order3.items.add(item3);
        order3.total += item3.price;
        System.out.println(order3.name);
        System.out.println(order3.total);
        
        order4.items.add(item4);
        order4.total += item4.price;
        System.out.println(order4.name);
        System.out.println(order4.total);
        
        order1.ready = true;
        System.out.println(order1.ready);
        
        order3.items.add(item3);
        order3.total += item3.price;
        System.out.println(order3.name);
        System.out.println(order3.total);
        
        order4.ready = true;
        System.out.println(order4.ready);
        
        // Application Simulations
        // Use this example code to test various orders' updates
        
        /*
        System.out.printf("Name: %s\n", order1.name);
        System.out.printf("Total: %s\n", order1.total);
        System.out.printf("Ready: %s\n", order1.ready);
        */
    }
}