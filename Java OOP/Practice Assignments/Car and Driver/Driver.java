public class Driver extends Car {
    private Car car;

    public Driver() {
        this.car = new Car();
    }

    public void drive() {
        System.out.println("You drive the car");
        this.car.gas--;
        this.car.display();

        if(this.car.gas <= 0) {
            System.out.println("game over");
        }
    }

    public void boost() {
        if(this.car.gas >= 3) {
            System.out.println("You use boosters");
            this.car.gas -= 3;
            this.car.display();
        }
        else {
            System.out.println("Not enough fuel to user boosters");
        }

        if(this.car.gas <= 0) {
            System.out.println("game over");
        }
    }

    public void refuel() {
        if(this.car.gas <= 8) {
            System.out.println("You refuel the car");
            this.car.gas += 2;
            this.car.display();
        }
        else {
            System.out.println("Too much fuel to refuel");
        }
    }
}