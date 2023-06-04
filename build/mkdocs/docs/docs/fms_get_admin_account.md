<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Organizations account that is associated with Firewall Manager as the Firewall Manager default administrator

### Description

Returns the Organizations account that is associated with Firewall
Manager as the Firewall Manager default administrator.

### Usage

    fms_get_admin_account()

### Value

A list with the following syntax:

    list(
      AdminAccount = "string",
      RoleStatus = "READY"|"CREATING"|"PENDING_DELETION"|"DELETING"|"DELETED"
    )

### Request syntax

    svc$get_admin_account()
