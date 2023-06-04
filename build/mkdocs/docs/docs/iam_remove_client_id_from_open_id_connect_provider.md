<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_remove_client_id_from_open_id_connect_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object

### Description

Removes the specified client ID (also known as audience) from the list
of client IDs registered for the specified IAM OpenID Connect (OIDC)
provider resource object.

This operation is idempotent; it does not fail or return an error if you
try to remove a client ID that does not exist.

### Usage

    iam_remove_client_id_from_open_id_connect_provider(
      OpenIDConnectProviderArn, ClientID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_remove_client_id_from_open_id_connect_provider_:_OpenIDConnectProviderArn">OpenIDConnectProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM OIDC
provider resource to remove the client ID from. You can get a list of
OIDC provider ARNs by using the
<code>list_open_id_connect_providers</code> operation.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_remove_client_id_from_open_id_connect_provider_:_ClientID">ClientID</code></td>
<td><p>[required] The client ID (also known as audience) to remove from
the IAM OIDC provider resource. For more information about client IDs,
see <code>create_open_id_connect_provider</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_client_id_from_open_id_connect_provider(
      OpenIDConnectProviderArn = "string",
      ClientID = "string"
    )
