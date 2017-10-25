module com.api.providerimplone {
    requires commonApi;
    provides com.api.MyService with com.api.providerimplone.ProviderImplOne;
}