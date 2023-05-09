public class Mammal {
    protected int energy = 100;

    public Mammal(int energy) {
        this.energy = energy;
    }

    public int displayEnergy() {
        System.out.printf("Energy level: %d\n", energy);

        return energy;
    }
}