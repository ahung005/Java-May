import java.util.ArrayList;
import java.text.*;

public class CafeUtil {
    
    public int getStreakGoal() {
        int sum = 0;

        for(int week = 1; week <= 10; week++) {
            sum += week;
        }

        return sum;
    }
    
    public double getOrderTotal(double[] prices) {
        double totalPrice = 0.0;
        
        for(double price : prices) {
            totalPrice += price;
        }
        
        return totalPrice;
    }
    
    public void displayMenu(ArrayList<String> menuItems) {
        for(int i = 0; i < menuItems.size(); i++) {
            System.out.println(i + ". " + menuItems.get(i));
        }
    }
    
    public void addCustomer(ArrayList<String> customers) {
        System.out.println("Please enter your name:");
        
        String userName = System.console().readLine();
        
        System.out.printf("Hello, %s! There are %s people in front of you.\n", userName, customers.size());
        
        customers.add(userName);
        
        System.out.println(customers);
    }
    
    //------------------Ninja Bonus------------------//
    
    public int getStreakGoal(int numWeeks) {
    	int sum = 0;
    	
    	for(int week = 1; week <= numWeeks; week++) {
    	    sum += week;
    	}
    	
    	return sum;
    }
    
    // helper function
    static public String customFormat(String pattern, double value) {
        DecimalFormat myFormatter = new DecimalFormat(pattern);
        String output = myFormatter.format(value);
        
        return output;
    }
    
    public void printPriceChart(String product, double price, int maxQuantity) {
        System.out.println(product);
        
        for(int i = 0; i < maxQuantity; i++)  {
            //System.out.printf("%s - $%.2f\n", i + 1, price * (i + 1));
            System.out.printf("%s - %s\n", i + 1, customFormat("$###,###.00", (price * (i + 1)) - (0.5 * i)));
        }
    }
    
    public boolean displayMenu(ArrayList<String> menuItems, ArrayList<Double> prices) {
        if(menuItems.size() != prices.size()) {
            return false;
        }
        for(int i = 0; i < menuItems.size(); i++) {
            System.out.printf("%s %s -- %s\n", i,menuItems.get(i), customFormat("$###,###.00", prices.get(i)));
        }
        return true;
    }
    
    //------------------Sensei Bonus------------------//
    
    public void addCustomers(ArrayList<String> customers) {
        String input;
        
        do {
            System.out.println("Please enter your name:");
            input = System.console().readLine();
            if(!input.equals("q")) {
                customers.add(input);
                System.out.println(customers);
            }
        } while(!input.equals("q"));
    }
    
}