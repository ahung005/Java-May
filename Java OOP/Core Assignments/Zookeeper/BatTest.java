public class BatTest {
    public static void main(String[] args) {
        Bat bat1 = new Bat();
        bat1.displayEnergy();
        bat1.attackTown();
        bat1.attackTown();
        bat1.attackTown();
        bat1.eatHumans();
        bat1.eatHumans();
        bat1.fly();
        bat1.fly();
        bat1.displayEnergy(); // -50
    }
}