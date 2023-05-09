public class Gorilla extends Mammal {
    public Gorilla() {
        super(100);
    }

    public void throwSomething() {
        System.out.println("Gorilla threw something");
        this.energy -= 5;
    }

    public void eatBananas() {
        System.out.println("Gorilla ate banana");
        this.energy += 10;
    }

    public void climb() {
        System.out.println("Gorilla climbed a tree");
        this.energy -= 10;
    }
}