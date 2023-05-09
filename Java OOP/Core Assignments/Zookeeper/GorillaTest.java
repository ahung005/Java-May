public class GorillaTest {
    public static void main(String[] args) {
        Gorilla tester = new Gorilla();
        tester.throwSomething();
        tester.throwSomething();
        tester.throwSomething();
        tester.eatBananas();
        tester.eatBananas();
        tester.climb();
        tester.displayEnergy();     // 95

        Gorilla harambe = new Gorilla();
        Gorilla monke = new Gorilla();
        harambe.displayEnergy();    // 100
        monke.displayEnergy();      // 100

        harambe.throwSomething();
        monke.eatBananas();
        harambe.displayEnergy();    // 95
        monke.displayEnergy();      // 110

        harambe.climb();
        monke.climb();
        harambe.displayEnergy();    // 85
        monke.displayEnergy();      // 100
    }
}