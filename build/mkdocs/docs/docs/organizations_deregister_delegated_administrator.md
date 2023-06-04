<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_deregister_delegated_administrator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified member Amazon Web Services account as a delegated administrator for the specified Amazon Web Services service

### Description

Removes the specified member Amazon Web Services account as a delegated
administrator for the specified Amazon Web Services service.

Deregistering a delegated administrator can have unintended impacts on
the functionality of the enabled Amazon Web Services service. See the
documentation for the enabled service before you deregister a delegated
administrator so that you understand any potential impacts.

You can run this action only for Amazon Web Services services that
support this feature. For a current list of services that support it,
see the column *Supports Delegated Administrator* in the table at
[Amazon Web Services Services that you can use with
Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html)
in the *Organizations User Guide.*

This operation can be called only from the organization's management
account.

### Usage

    organizations_deregister_delegated_administrator(AccountId,
      ServicePrincipal)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_deregister_delegated_administrator_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID number of the member account in the
organization that you want to deregister as a delegated
administrator.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_deregister_delegated_administrator_:_ServicePrincipal">ServicePrincipal</code></td>
<td><p>[required] The service principal name of an Amazon Web Services
service for which the account is a delegated administrator.</p>
<p>Delegated administrator privileges are revoked for only the specified
Amazon Web Services service from the member account. If the specified
service is the only service for which the member account is a delegated
administrator, the operation also revokes Organizations read action
permissions.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_delegated_administrator(
      AccountId = "string",
      ServicePrincipal = "string"
    )
