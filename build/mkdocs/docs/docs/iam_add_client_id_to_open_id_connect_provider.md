<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_add_client_id_to_open_id_connect_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource

### Description

Adds a new client ID (also known as audience) to the list of client IDs
already registered for the specified IAM OpenID Connect (OIDC) provider
resource.

This operation is idempotent; it does not fail or return an error if you
add an existing client ID to the provider.

### Usage

    iam_add_client_id_to_open_id_connect_provider(OpenIDConnectProviderArn,
      ClientID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_add_client_id_to_open_id_connect_provider_:_OpenIDConnectProviderArn">OpenIDConnectProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM OpenID
Connect (OIDC) provider resource to add the client ID to. You can get a
list of OIDC provider ARNs by using the
<code>list_open_id_connect_providers</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_add_client_id_to_open_id_connect_provider_:_ClientID">ClientID</code></td>
<td><p>[required] The client ID (also known as audience) to add to the
IAM OpenID Connect provider resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_client_id_to_open_id_connect_provider(
      OpenIDConnectProviderArn = "string",
      ClientID = "string"
    )

### Examples

    ## Not run: 
    # The following add-client-id-to-open-id-connect-provider command adds the
    # client ID my-application-ID to the OIDC provider named
    # server.example.com:
    svc$add_client_id_to_open_id_connect_provider(
      ClientID = "my-application-ID",
      OpenIDConnectProviderArn = "arn:aws:iam::123456789012:oidc-provider/server.example.com"
    )

    ## End(Not run)
