public interface AnotherDependency {
    private String getData(){
        return "Data";
    }
    default String build(){
        return getData();
    }
}
