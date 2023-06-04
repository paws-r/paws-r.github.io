<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_accept_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts the specified grant

### Description

Accepts the specified grant.

### Usage

    licensemanager_accept_grant(GrantArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_accept_grant_:_GrantArn">GrantArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the grant.</p></td>
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

    svc$accept_grant(
      GrantArn = "string"
    )
