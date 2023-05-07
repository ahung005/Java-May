import java.util.ArrayList;

public class TestOrders {
    public static void main(String[] args) {
    
        // Menu items
        Item item1 = new Item("Mocha", 3.50);
        System.out.printf("%s -- $%.2f\n", item1.getName(), item1.getPrice());
        Item item2 = new Item("Drip Coffee", 4.25);
        System.out.printf("%s -- $%.2f\n", item2.getName(), item2.getPrice());
        Item item3 = new Item("Latte", 3.25);
        System.out.printf("%s -- $%.2f\n", item3.getName(), item3.getPrice());
        Item item4 = new Item("Cappucino", 3.00);
        System.out.printf("%s -- $%.2f\n", item4.getName(), item4.getPrice());

        // ------ Test Setters ------ //
        System.out.println("\n\n------ Test Setters ------");
        item3.setName("Latte Art");
        System.out.printf("%s -- $%.2f\n", item3.getName(), item3.getPrice());
        item4.setPrice(2.95);
        System.out.printf("%s -- $%.2f\n", item4.getName(), item4.getPrice());

        // ------ Order ------ //
        System.out.println("\n\n------ Order Constructor ------");
        Order guestOrder = new Order();
        guestOrder.display();

        System.out.println("\n\n------ Order Constructor Overload ------");
        Order order1 = new Order("Cindurhi");
        order1.addItem(item2);
        order1.addItem(item4);
        order1.display();

        System.out.println("\n\n------ Another Order ------");
        Order order2 = new Order();
        System.out.println(order2.getName());
        order2.setName("Bob");
        System.out.println(order2.getName());
        order2.addItem(item3);
        order2.addItem(item4);
        order2.addItem(item1);
        order2.display();
        order2.setReady(true);
        order2.getStatusMessage();

        System.out.println("\n\n------ Order getStatusMessage ------");
        guestOrder.setReady(false);
        System.out.println(guestOrder.getStatusMessage());
        guestOrder.setReady(true);
        System.out.println(guestOrder.getStatusMessage());
        
    }
}