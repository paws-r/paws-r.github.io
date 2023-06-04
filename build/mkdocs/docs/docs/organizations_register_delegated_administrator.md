<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_register_delegated_administrator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the specified member account to administer the Organizations features of the specified Amazon Web Services service

### Description

Enables the specified member account to administer the Organizations
features of the specified Amazon Web Services service. It grants
read-only access to Organizations service data. The account still
requires IAM permissions to access and administer the Amazon Web
Services service.

You can run this action only for Amazon Web Services services that
support this feature. For a current list of services that support it,
see the column *Supports Delegated Administrator* in the table at
[Amazon Web Services Services that you can use with
Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html)
in the *Organizations User Guide.*

This operation can be called only from the organization's management
account.

### Usage

    organizations_register_delegated_administrator(AccountId,
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
id="organizations_register_delegated_administrator_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID number of the member account in the
organization to register as a delegated administrator.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_register_delegated_administrator_:_ServicePrincipal">ServicePrincipal</code></td>
<td><p>[required] The service principal of the Amazon Web Services
service for which you want to make the member account a delegated
administrator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_delegated_administrator(
      AccountId = "string",
      ServicePrincipal = "string"
    )
