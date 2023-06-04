<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_open_id_connect_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an IAM entity to describe an identity provider (IdP) that supports OpenID Connect (OIDC)

### Description

Creates an IAM entity to describe an identity provider (IdP) that
supports [OpenID Connect (OIDC)](https://openid.net/connect/).

The OIDC provider that you create with this operation can be used as a
principal in a role's trust policy. Such a policy establishes a trust
relationship between Amazon Web Services and the OIDC provider.

If you are using an OIDC identity provider from Google, Facebook, or
Amazon Cognito, you don't need to create a separate IAM identity
provider. These OIDC identity providers are already built-in to Amazon
Web Services and are available for your use. Instead, you can move
directly to creating new roles using your identity provider. To learn
more, see [Creating a role for web identity or OpenID connect
federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html)
in the *IAM User Guide*.

When you create the IAM OIDC provider, you specify the following:

-   The URL of the OIDC identity provider (IdP) to trust

-   A list of client IDs (also known as audiences) that identify the
    application or applications allowed to authenticate using the OIDC
    provider

-   A list of tags that are attached to the specified IAM OIDC provider

-   A list of thumbprints of one or more server certificates that the
    IdP uses

You get all of this information from the OIDC IdP you want to use to
access Amazon Web Services.

Amazon Web Services secures communication with some OIDC identity
providers (IdPs) through our library of trusted certificate authorities
(CAs) instead of using a certificate thumbprint to verify your IdP
server certificate. These OIDC IdPs include Google, Auth0, and those
that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint.
In these cases, your legacy thumbprint remains in your configuration,
but is no longer used for validation.

The trust for the OIDC provider is derived from the IAM provider that
this operation creates. Therefore, it is best to limit access to the
`create_open_id_connect_provider` operation to highly privileged users.

### Usage

    iam_create_open_id_connect_provider(Url, ClientIDList, ThumbprintList,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_open_id_connect_provider_:_Url">Url</code></td>
<td><p>[required] The URL of the identity provider. The URL must begin
with <code style="white-space: pre;">⁠https://⁠</code> and should
correspond to the <code>iss</code> claim in the provider's OpenID
Connect ID tokens. Per the OIDC standard, path components are allowed
but query parameters are not. Typically the URL consists of only a
hostname, like <code
style="white-space: pre;">⁠https://server.example.org⁠</code> or <code
style="white-space: pre;">⁠https://example.com⁠</code>. The URL should not
contain a port number.</p>
<p>You cannot register the same provider multiple times in a single
Amazon Web Services account. If you try to submit a URL that has already
been used for an OpenID Connect provider in the Amazon Web Services
account, you will get an error.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_create_open_id_connect_provider_:_ClientIDList">ClientIDList</code></td>
<td><p>Provides a list of client IDs, also known as audiences. When a
mobile or web app registers with an OpenID Connect provider, they
establish a value that identifies the application. This is the value
that's sent as the <code>client_id</code> parameter on OAuth
requests.</p>
<p>You can register multiple client IDs with the same provider. For
example, you might have multiple applications that use the same OIDC
provider. You cannot register more than 100 client IDs with a single IAM
OIDC provider.</p>
<p>There is no defined format for a client ID. The
<code>CreateOpenIDConnectProviderRequest</code> operation accepts client
IDs up to 255 characters long.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_open_id_connect_provider_:_ThumbprintList">ThumbprintList</code></td>
<td><p>[required] A list of server certificate thumbprints for the
OpenID Connect (OIDC) identity provider's server certificates. Typically
this list includes only one entry. However, IAM lets you have up to five
thumbprints for an OIDC provider. This lets you maintain multiple
thumbprints if the identity provider is rotating certificates.</p>
<p>The server certificate thumbprint is the hex-encoded SHA-1 hash value
of the X.509 certificate used by the domain where the OpenID Connect
provider makes its keys available. It is always a 40-character
string.</p>
<p>You must provide at least one thumbprint when creating an IAM OIDC
provider. For example, assume that the OIDC provider is
<code>server.example.com</code> and the provider stores its keys at
https://keys.server.example.com/openid-connect. In that case, the
thumbprint string would be the hex-encoded SHA-1 hash value of the
certificate used by <code
style="white-space: pre;">⁠https://keys.server.example.com.⁠</code></p>
<p>For more information about obtaining the OIDC provider thumbprint,
see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html">Obtaining
the thumbprint for an OpenID Connect provider</a> in the <em>IAM user
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_create_open_id_connect_provider_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the new IAM OpenID
Connect (OIDC) provider. Each tag consists of a key name and an
associated value. For more information about tagging, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging
IAM resources</a> in the <em>IAM User Guide</em>.</p>
<p>If any one of the tags is invalid or if you exceed the allowed
maximum number of tags, then the entire request fails and the resource
is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpenIDConnectProviderArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_open_id_connect_provider(
      Url = "string",
      ClientIDList = list(
        "string"
      ),
      ThumbprintList = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example defines a new OIDC provider in IAM with a client
    # ID of my-application-id and pointing at the server with a URL of
    # https://server.example.com.
    svc$create_open_id_connect_provider(
      ClientIDList = list(
        "my-application-id"
      ),
      ThumbprintList = list(
        "3768084dfb3d2b68b7897bf5f565da8efEXAMPLE"
      ),
      Url = "https://server.example.com"
    )

    ## End(Not run)
