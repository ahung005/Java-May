public class TestBankAccount {
    public static void main(String[] args) {
        System.out.printf("Number of accounts: %d\n", BankAccount.numAccounts);
        System.out.printf("Total amount: $%.2f\n", BankAccount.totalAmount);

        BankAccount account1 = new BankAccount();
        System.out.printf("Number of accounts: %d\n", BankAccount.numAccounts);
        System.out.printf("Total amount: $%.2f\n", BankAccount.totalAmount);
        account1.deposit(50, "Savings");
        account1.deposit(25, "Checking");
        System.out.printf("Checking: $%.2f\n", account1.getCheckingBalance());
        System.out.printf("Savings: $%.2f\n", account1.getSavingsBalance());
        System.out.printf("Number of accounts: %d\n", BankAccount.numAccounts);
        System.out.printf("Total amount: $%.2f\n", BankAccount.totalAmount);

        BankAccount account2 = new BankAccount();
        account2.deposit(1, "Savings");
        account2.deposit(2, "Checking");
        System.out.printf("Checking: $%.2f\n", account2.getCheckingBalance());
        System.out.printf("Savings: $%.2f\n", account2.getSavingsBalance());
        System.out.printf("Number of accounts: %d\n", BankAccount.numAccounts);
        System.out.printf("Total amount: $%.2f\n", BankAccount.totalAmount);

        account1.withdraw(50, "Savings");
        account1.withdraw(26, "Checking");
        System.out.printf("Checking: $%.2f\n", account1.getCheckingBalance());
        System.out.printf("Savings: $%.2f\n", account1.getSavingsBalance());
        System.out.printf("Number of accounts: %d\n", BankAccount.numAccounts);
        System.out.printf("Total amount: $%.2f\n", BankAccount.totalAmount);

        System.out.println("-----------------");
        account1.display();
        System.out.println("-----------------");
        account2.display();
    }
}