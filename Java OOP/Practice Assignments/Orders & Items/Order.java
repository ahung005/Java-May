import java.util.ArrayList;

public class Order {
    String name;
    double total;
    boolean ready;
    ArrayList<Item> items = new ArrayList<Item>();
    
    public Order () {}
    
    public Order(String name, double total, boolean ready, ArrayList<Item> items) {
        this.name = name;
        this.total = total;
        this.ready = ready;
        this.items = items;
    }
}