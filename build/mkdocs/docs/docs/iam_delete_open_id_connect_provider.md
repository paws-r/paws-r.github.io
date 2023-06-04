<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_open_id_connect_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an OpenID Connect identity provider (IdP) resource object in IAM

### Description

Deletes an OpenID Connect identity provider (IdP) resource object in
IAM.

Deleting an IAM OIDC provider resource does not update any roles that
reference the provider as a principal in their trust policies. Any
attempt to assume a role that references a deleted provider fails.

This operation is idempotent; it does not fail or return an error if you
call the operation for a provider that does not exist.

### Usage

    iam_delete_open_id_connect_provider(OpenIDConnectProviderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_open_id_connect_provider_:_OpenIDConnectProviderArn">OpenIDConnectProviderArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM OpenID
Connect provider resource object to delete. You can get a list of OpenID
Connect provider resource ARNs by using the
<code>list_open_id_connect_providers</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_open_id_connect_provider(
      OpenIDConnectProviderArn = "string"
    )
