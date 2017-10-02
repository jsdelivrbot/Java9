@FunctionalInterface
public interface IDependency {
    private String testPrivateMethod(){
        return "Private method";
    }

    String sayHello();

    //String sayHello(String a);
     //int test(int a);
}
