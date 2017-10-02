

public class Main {
    public static void main(String [] args){
        System.out.print("Java 9");
        test();

    }
    private static void test(){
        IDependency dependency = () -> "data";
        System.out.println(dependency.sayHello());
    }
}
