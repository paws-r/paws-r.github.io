<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_delete_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified grant

### Description

Deletes the specified grant.

### Usage

    licensemanager_delete_grant(GrantArn, StatusReason, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_delete_grant_:_GrantArn">GrantArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the grant.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_delete_grant_:_StatusReason">StatusReason</code></td>
<td><p>The Status reason for the delete request.</p></td>
</tr>
<tr class="odd">
<td><code id="licensemanager_delete_grant_:_Version">Version</code></td>
<td><p>[required] Current version of the grant.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GrantArn = "string",
      Status = "PENDING_WORKFLOW"|"PENDING_ACCEPT"|"REJECTED"|"ACTIVE"|"FAILED_WORKFLOW"|"DELETED"|"PENDING_DELETE"|"DISABLED"|"WORKFLOW_COMPLETED",
      Version = "string"
    )

### Request syntax

    svc$delete_grant(
      GrantArn = "string",
      StatusReason = "string",
      Version = "string"
    )
