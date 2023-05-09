public class Bat extends Mammal {
    public Bat() {
        super(300);
    }

    public void fly() {
        System.out.println("flap flap flap");
        this.energy -= 50;
    }

    public void eatHumans() {
        System.out.println("Nosferatu");
        this.energy += 25;
    }

    public void attackTown() {
        System.out.println("Burn it to the ground");
        this.energy -= 100;
    }
}