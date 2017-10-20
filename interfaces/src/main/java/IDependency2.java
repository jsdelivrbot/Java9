/**
 * Created by XEC36259 on 10/20/2017.
 */
public interface IDependency2 {

    private String sampleMethodSecond(){
        return "private method";
    }
    default String sampleMethod(){
        return sampleMethodSecond();
    }
}
