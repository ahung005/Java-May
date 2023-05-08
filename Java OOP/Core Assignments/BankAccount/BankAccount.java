import java.util.Random;

public class BankAccount {
    public static int numAccounts = 0;
    public static double totalAmount = 0;

    private static int generateID() {
        Random random = new Random();
        return random.nextInt(1000000000) + 999999999;
    }

    private double checkingBalance;
    private double savingsBalance;
    private int accountID;

    public BankAccount() {
        BankAccount.numAccounts++;
        this.checkingBalance = 0;
        this.savingsBalance = 0;
        this.accountID = BankAccount.generateID();
    }

    public double getCheckingBalance() {
        return this.checkingBalance;
    }

    public double getSavingsBalance() {
        return this.savingsBalance;
    }

    public void setCheckingBalance(double amount) {
        this.checkingBalance += amount;
    }

    public void deposit(double amount, String account) {
        if(account.equals("Checking")) {
            this.checkingBalance += amount;
        }
        else {
            this.savingsBalance += amount;
        }
        BankAccount.totalAmount += amount;
    }

    public void withdraw(double amount, String account) {
        if(account.equals("Checking")) {
            if(this.checkingBalance >= amount) {
                this.checkingBalance -= amount;
                BankAccount.totalAmount -= amount;
            }
            else {
                System.out.println("Insufficient funds");
            }
        }
        else {
            if(this.savingsBalance >= amount) {
                this.savingsBalance -= amount;
                BankAccount.totalAmount -= amount;
            }
            else {
                System.out.println("Insufficient funds");
            }
        }
    }

    public void display() {
        System.out.printf("Account ID: %d\n", this.accountID);
        System.out.printf("Checking Account: $%.2f\n Savings Account: $%.2f\n", this.checkingBalance, this.savingsBalance);
        System.out.println("--------------------------");
    }
}