<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_disassociate_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Firewall Manager administrator account

### Description

Disassociates an Firewall Manager administrator account. To set a
different account as an Firewall Manager administrator, submit a
`put_admin_account` request. To set an account as a default
administrator account, you must submit an `associate_admin_account`
request.

Disassociation of the default administrator account follows the first
in, last out principle. If you are the default administrator, all
Firewall Manager administrators within the organization must first
disassociate their accounts before you can disassociate your account.

### Usage

    fms_disassociate_admin_account()

### Value

An empty list.

### Request syntax

    svc$disassociate_admin_account()
