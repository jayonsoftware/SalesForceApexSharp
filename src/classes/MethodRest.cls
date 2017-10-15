@RestResource(urlMapping='/api/v1/restMethoDemo')
global class MethodRest {
    @httpDelete
    global static void DoDelete() {
    }

    @httpPost
    global static void Post() {
    }

    @httpGet
    global static string Get() {
        return 'Jay';
    }

    @httpPatch
    global static void Patch() {
    }

    @httpPut
    global static void Put() {
    }
}