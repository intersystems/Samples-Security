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
  routine. For details, see [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GCAS_delegated).

* `ZAUTHORIZE.mac` is a sample routine that you helps you define delegated (user-defined) 
  authorization. Copy and modify this sample to create your own `ZAUTHORIZE`
  routine. For details, see [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GCAS_delegauthz).

* `LDAP.mac` demonstrates calls to the `%SYS.LDAP` class, which you would use as part of
  delegated authentication, in cases when you want to authenticate using the LDAP server.
  For details, see [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GCAS_LDAP_overview).

* `OAUTH2.ZAUTHENTICATE.mac` is another sample routine that helps you define delegated 
  authentication, in this case, specifically for use within the OAuth 2.0 framework.
  Copy and modify this sample to create your own `ZAUTHENTICATE` routine, as described in [documentation](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GOAUTH_client_delauthe).

  For details on this particular sample routine, see [this page](http://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GOAUTH_client_delauthe_sampleroutine).

## Setup instructions

1. Download the repo to your local disk and uncompress it.
2. Open the InterSystems IRIS Terminal.
3. Enter the following command (replacing `<namespace>` with the namespace where you want to load the sample):
```
   ZN "<namespace>"
```
4. Enter the following commands (replacing with the full path of the `buildsample/buildsamplesecurity.mac` file):
```
   do $system.OBJ.Load("full-path-to-buildsamplesecurity.mac","ck")
   do ^buildsamplesecurity
```
5. Then answer any prompts.

