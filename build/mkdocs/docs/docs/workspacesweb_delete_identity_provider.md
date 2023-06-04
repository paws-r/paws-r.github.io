<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_delete_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the identity provider

### Description

Deletes the identity provider.

### Usage

    workspacesweb_delete_identity_provider(identityProviderArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_delete_identity_provider_:_identityProviderArn">identityProviderArn</code></td>
<td><p>[required] The ARN of the identity provider.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_identity_provider(
      identityProviderArn = "string"
    )
