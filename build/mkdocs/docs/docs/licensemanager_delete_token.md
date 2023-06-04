<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_delete_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified token

### Description

Deletes the specified token. Must be called in the license home Region.

### Usage

    licensemanager_delete_token(TokenId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="licensemanager_delete_token_:_TokenId">TokenId</code></td>
<td><p>[required] Token ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_token(
      TokenId = "string"
    )
