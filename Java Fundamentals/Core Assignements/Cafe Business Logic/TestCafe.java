import java.util.ArrayList;
import java.util.Arrays;

public class TestCafe {
    public static void main(String[] args) {
        
    /* 
        You will need add 1 line to this file to create an instance 
        of the CafeUtil class. 
        Hint: it will need to correspond with the variable name used below..
    */
    
    CafeUtil appTest = new CafeUtil();
    	
        /* ============ App Test Cases ============= */
    
        System.out.println("\n----- Streak Goal Test -----");
        System.out.printf("Purchases needed by week 10: %s \n\n", appTest.getStreakGoal());
    
        System.out.println("----- Order Total Test-----");
        double[] lineItems = {3.5, 1.5, 4.0, 4.5};
        System.out.printf("Order total: %s \n\n",appTest.getOrderTotal(lineItems));
        
        System.out.println("----- Display Menu Test-----");
        
        ArrayList<String> menu = new ArrayList<String>();
        menu.add("drip coffee");
        menu.add("cappuccino");
        menu.add("latte");
        menu.add("mocha");
        appTest.displayMenu(menu);
    
        /*
        System.out.println("\n----- Add Customer Test-----");
        ArrayList<String> customers = new ArrayList<String>();
        // --- Test 4 times ---
        for (int i = 0; i < 4; i++) {
            appTest.addCustomer(customers);
            System.out.println("\n");
        }
        */
        
        /* ============ Ninja Bonus App Test Cases ============= */
        System.out.println("\n----- Ninja Bonus -----");
        System.out.println("\n----- Streak Goal Test -----");
        System.out.printf("Purchases needed by week 15: %s \n\n", appTest.getStreakGoal(15));
        
        
        System.out.println("\n----- Price Chart Test -----");
        appTest.printPriceChart("Columbian Coffee Grounds", 2, 4);
        
        System.out.println("\n----- Display Menu Test -----");
        ArrayList<Double> price = new ArrayList<Double>();
        price.add(1.5);
        price.add(3.5);
        price.add(4.5);
        price.add(3.5);
        appTest.displayMenu(menu, price);
        
        /* ============ Sensei Bonus App Test Cases ============= */
        System.out.println("\n----- Sensei Bonus -----");
        System.out.println("\n----- Add Customers Test-----");
        ArrayList<String> customers = new ArrayList<String>();
        customers.add("SpongeBob");
        customers.add("Patrick");
        customers.add("Squidward");
        customers.add("Mr. Krabs");
        appTest.addCustomers(customers);
    }
}