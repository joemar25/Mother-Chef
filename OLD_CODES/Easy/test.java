import java.util.ArrayList;

class Dog {

    /*
     * * * * * * * * * * * * * * * * * *
     * 
     * [ ATTRIBUTES ]
     * 
     * * * * * * * * * * * * * * * * * *
     */

    private int id, age;
    private String name, type;

    /*
     * * * * * * * * * * * * * * * * * *
     * 
     * [ CONSTRUCTORS ]
     * 
     * * * * * * * * * * * * * * * * * *
     */

    public Dog(int id, int age, String name, String type) {
        this.setId(id);
        this.setAge(id);
        this.setName(name);
        this.setType(type);
    }

    /*
     * * * * * * * * * * * * * * * * * *
     * 
     * [ SETTER FUNCTIONS ]
     * 
     * * * * * * * * * * * * * * * * * *
     */
    private void setId(int val) {
        this.id = validate(val) ? val : 0;
    }

    private void setAge(int val) {

        this.age = validate(val) ? val : 0;
    }

    private void setName(String val) {
        this.name = val;
    }

    private void setType(String val) {
        this.type = val;
    }

    /*
     * * * * * * * * * * * * * * * * * *
     * 
     * [ GETTER FUNCTIONS ]
     * 
     * * * * * * * * * * * * * * * * * *
     */

    public int getId() {
        return this.id;
    }

    /*
     * * * * * * * * * * * * * * * * * *
     * 
     * [ HELPER FUNCTIONS ]
     * 
     * * * * * * * * * * * * * * * * * *
     */

    private boolean validate(int val) {
        /*
         * Note:
         * > if the provided value is greater than 0 then it is good,
         * > else return false
         */
        return val > 0;
    }

    @Override
    public String toString() {
        return "Dog [" + this.age + ", " + this.name + ", " + this.type + "]";
    }

}

public class test {

    public static void main(String[] args) {

        ArrayList<Dog> dogs = new ArrayList<>();
        dogs.add(new Dog(1, 2, "korea", "boo"));

        for (Dog dog : dogs) {
            System.out.println(dog);
        }

    }

}
