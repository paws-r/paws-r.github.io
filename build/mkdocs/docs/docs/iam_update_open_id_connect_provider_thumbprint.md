<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_open_id_connect_provider_thumbprint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints

### Description

Replaces the existing list of server certificate thumbprints associated
with an OpenID Connect (OIDC) provider resource object with a new list
of thumbprints.

The list that you pass with this operation completely replaces the
existing list of thumbprints. (The lists are not merged.)

Typically, you need to update a thumbprint only when the identity
provider certificate changes, which occurs rarely. However, if the
provider's certificate *does* change, any attempt to assume an IAM role
that specifies the OIDC provider as a principal fails until the
certificate thumbprint is updated.

Amazon Web Services secures communication with some OIDC identity
providers (IdPs) through our library of trusted certificate authorities
(CAs) instead of using a certificate thumbprint to verify your IdP
server certificate. These OIDC IdPs include Google, Auth0, and those
that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint.
In these cases, your legacy thumbprint remains in your configuration,
but is no longer used for validation.

Trust for the OIDC provider is derived from the provider certificate and
is validated by the thumbprint. Therefore, it is best to limit access to
the `update_open_id_connect_provider_thumbprint` operation to highly
privileged users.

### Usage

    iam_update_open_id_connect_provider_thumbprint(OpenIDConnectProviderArn,
      ThumbprintList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_open_id_connect_provider_thumbprint_:_OpenIDConnectProviderArn">OpenIDConnectProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM OIDC
provider resource object for which you want to update the thumbprint.
You can get a list of OIDC provider ARNs by using the
<code>list_open_id_connect_providers</code> operation.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_open_id_connect_provider_thumbprint_:_ThumbprintList">ThumbprintList</code></td>
<td><p>[required] A list of certificate thumbprints that are associated
with the specified IAM OpenID Connect provider. For more information,
see <code>create_open_id_connect_provider</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_open_id_connect_provider_thumbprint(
      OpenIDConnectProviderArn = "string",
      ThumbprintList = list(
        "string"
      )
    )
