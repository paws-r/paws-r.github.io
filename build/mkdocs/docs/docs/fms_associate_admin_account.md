<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_associate_admin_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets a Firewall Manager default administrator account

### Description

Sets a Firewall Manager default administrator account. The Firewall
Manager default administrator account can manage third-party firewalls
and has full administrative scope that allows administration of all
policy types, accounts, organizational units, and Regions. This account
must be a member account of the organization in Organizations whose
resources you want to protect.

For information about working with Firewall Manager administrator
accounts, see [Managing Firewall Manager
administrators](https://docs.aws.amazon.com/organizations/latest/userguide/)
in the *Firewall Manager Developer Guide*.

### Usage

    fms_associate_admin_account(AdminAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_associate_admin_account_:_AdminAccount">AdminAccount</code></td>
<td><p>[required] The Amazon Web Services account ID to associate with
Firewall Manager as the Firewall Manager default administrator account.
This account must be a member account of the organization in
Organizations whose resources you want to protect. For more information
about Organizations, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing
the Amazon Web Services Accounts in Your Organization</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_admin_account(
      AdminAccount = "string"
    )
