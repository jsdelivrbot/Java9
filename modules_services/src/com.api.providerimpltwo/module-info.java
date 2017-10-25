module com.api.providerimpltwo {
    requires commonApi;
    provides com.api.MyService with com.api.providerimpltwo.ProviderImplTwo;
}