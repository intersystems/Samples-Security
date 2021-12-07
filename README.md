# Samples-Security

This is the README file for SAMPLES-SECURITY. 
The end of the file has setup instructions.

---
Use or operation of this code is subject to acceptance of the license available in the code 
repository for this code.

---
SAMPLES-SECURITY is meant for use with the InterSystems IRIS. This sample includes
routines that you can copy and modify for specific purposes.

## Contents of this sample

* `ZAUTHENTICATE.mac` is a sample routine that you helps you define delegated (user-defined) 
  authentication. Copy and modify this sample to create your own `ZAUTHENTICATE`
  routine. For details, see [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GAUTHN_delegated).

* `ZAUTHORIZE.mac` is a sample routine that you helps you define delegated (user-defined) 
  authorization. Copy and modify this sample to create your own `ZAUTHORIZE`
  routine. For details, see [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GAUTHZ_delegauthz).

* `LDAP.mac` demonstrates calls to the `%SYS.LDAP` class, which you would use as part of
  delegated authentication, in cases when you want to authenticate using the LDAP server.
  For details, see [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GAUTHN_delegated#GAUTHN_ldap_authz).

* `OAUTH2.ZAUTHENTICATE.mac` is another sample routine that helps you define delegated 
  authentication, in this case, specifically for use within the OAuth 2.0 framework.
  Copy and modify this sample to create your own `ZAUTHENTICATE` routine, as described in [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GOAUTH_client#GOAUTH_client_delauthe_zauthenticate).
  
*  `REST.ZAUTHENTICATE.mac` is another sample routine that demonstrates how to authenticate a REST application using OAuth 2.0. To use this sample:
    1. Configure the resource server containing the REST application as an OAuth 2.0 resource server.
    2. Copy this routine to the %SYS namespace as ZAUTHENTICATE.mac.
    3. Modify value of applicationName in ZAUTHENTICATE.mac.
    4. Allow delegated authentication for %Service.CSP.
    5. Make sure that the web application for the REST application is using delegated authentication.


## Setup instructions

1. Clone or [download](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=asamples) the repository.
2. If you have not yet created a namespace in InterSystems IRIS, follow the [detailed instructions](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=ASAMPLES_createns) to do so.
3. Open the InterSystems IRIS Terminal.
4. Enter the following command (replacing `mynamespace` with the namespace where you want to load the sample):
```
   ZN "mynamespace"
```
5. Enter the following commands (replacing with the full path of the `buildsample/Build.SecuritySample.cls` file):
```
   do $system.OBJ.Load("full-path-to-Build.SecuritySample.cls","ck")
   do ##class(Build.SecuritySample).Build()
```
6. When prompted, enter the full path of the directory to which you downloaded this sample. The method then loads the sample code, but does not compile it.

