<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_account_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the registration status of an account in Audit Manager

### Description

Returns the registration status of an account in Audit Manager.

### Usage

    auditmanager_get_account_status()

### Value

A list with the following syntax:

    list(
      status = "ACTIVE"|"INACTIVE"|"PENDING_ACTIVATION"
    )

### Request syntax

    svc$get_account_status()
