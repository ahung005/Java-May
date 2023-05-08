public class Car {
    protected int gas;

    public Car() {
        this.gas = 10;
    }

    public void display() {
        System.out.printf("Gas remaining: %d/10\n\n", this.gas);
    }
}