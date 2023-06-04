<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_admin_accounts_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a AdminAccounts object that lists the Firewall Manager administrators within the organization that are onboarded to Firewall Manager by AssociateAdminAccount

### Description

Returns a `AdminAccounts` object that lists the Firewall Manager
administrators within the organization that are onboarded to Firewall
Manager by `associate_admin_account`.

This operation can be called only from the organization's management
account.

### Usage

    fms_list_admin_accounts_for_organization(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_list_admin_accounts_for_organization_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects with a <code>MaxResults</code>
setting, if the number of objects that are still available for retrieval
exceeds the maximum you requested, Firewall Manager returns a
<code>NextToken</code> value in the response. To retrieve the next batch
of objects, use the token returned from the prior request in your next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_list_admin_accounts_for_organization_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Firewall Manager to
return for this request. If more objects are available, in the response,
Firewall Manager provides a <code>NextToken</code> value that you can
use in a subsequent call to get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AdminAccounts = list(
        list(
          AdminAccount = "string",
          DefaultAdmin = TRUE|FALSE,
          Status = "ONBOARDING"|"ONBOARDING_COMPLETE"|"OFFBOARDING"|"OFFBOARDING_COMPLETE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_admin_accounts_for_organization(
      NextToken = "string",
      MaxResults = 123
    )
