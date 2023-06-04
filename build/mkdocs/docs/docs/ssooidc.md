<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssooidc</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS SSO OIDC

### Description

AWS IAM Identity Center (successor to AWS Single Sign-On) OpenID Connect
(OIDC) is a web service that enables a client (such as AWS CLI or a
native application) to register with IAM Identity Center. The service
also enables the client to fetch the user’s access token upon successful
authentication and authorization with IAM Identity Center.

Although AWS Single Sign-On was renamed, the `sso` and `identitystore`
API namespaces will continue to retain their original name for backward
compatibility purposes. For more information, see [IAM Identity Center
rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

**Considerations for Using This Guide**

Before you begin using this guide, we recommend that you first review
the following important information about how the IAM Identity Center
OIDC service works.

-   The IAM Identity Center OIDC service currently implements only the
    portions of the OAuth 2.0 Device Authorization Grant standard
    ([https://tools.ietf.org/html/rfc8628](https://datatracker.ietf.org/doc/html/rfc8628))
    that are necessary to enable single sign-on authentication with the
    AWS CLI. Support for other OIDC flows frequently needed for native
    applications, such as Authorization Code Flow (+ PKCE), will be
    addressed in future releases.

-   The service emits only OIDC access tokens, such that obtaining a new
    token (For example, token refresh) requires explicit user
    re-authentication.

-   The access tokens provided by this service grant access to all AWS
    account entitlements assigned to an IAM Identity Center user, not
    just a particular application.

-   The documentation in this guide does not describe the mechanism to
    convert the access token into AWS Auth (“sigv4”) credentials for use
    with IAM-protected AWS service endpoints. For more information, see
    [GetRoleCredentials](https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html)
    in the *IAM Identity Center Portal API Reference Guide*.

For general information about IAM Identity Center, see [What is IAM
Identity
Center?](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
in the *IAM Identity Center User Guide*.

### Usage

    ssooidc(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssooidc_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- ssooidc(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../ssooidc_create_token/"> create_token </a></td>
<td style="text-align: left;">Creates and returns an access token for
the authorized client</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssooidc_register_client/"> register_client </a></td>
<td style="text-align: left;">Registers a client with IAM Identity
Center</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssooidc_start_device_authorization/"> start_device_authorization </a></td>
<td style="text-align: left;">Initiates device authorization by
requesting a pair of verification codes from the authorization
service</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ssooidc()
    svc$create_token(
      Foo = 123
    )

    ## End(Not run)
