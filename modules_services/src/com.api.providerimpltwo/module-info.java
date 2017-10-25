module com.api.providerimpltwo {
    requires commonApi;
    provides com.api.MyService with com.api.providerimplone.ProviderImplTwo;
}