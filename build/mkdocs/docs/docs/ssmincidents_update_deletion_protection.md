<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_update_deletion_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update deletion protection to either allow or deny deletion of the final Region in a replication set

### Description

Update deletion protection to either allow or deny deletion of the final
Region in a replication set.

### Usage

    ssmincidents_update_deletion_protection(arn, clientToken,
      deletionProtected)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_update_deletion_protection_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the replication set
to update.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_update_deletion_protection_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that the operation is called only once with
the specified details.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_deletion_protection_:_deletionProtected">deletionProtected</code></td>
<td><p>[required] Specifies if deletion protection is turned on or off
in your account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_deletion_protection(
      arn = "string",
      clientToken = "string",
      deletionProtected = TRUE|FALSE
    )
