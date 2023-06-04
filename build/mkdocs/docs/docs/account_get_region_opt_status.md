<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>account_get_region_opt_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the opt-in status of a particular Region

### Description

Retrieves the opt-in status of a particular Region.

### Usage

    account_get_region_opt_status(AccountId, RegionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="account_get_region_opt_status_:_AccountId">AccountId</code></td>
<td><p>Specifies the 12-digit account ID number of the Amazon Web
Services account that you want to access or modify with this operation.
If you don't specify this parameter, it defaults to the Amazon Web
Services account of the identity used to call the operation. To use this
parameter, the caller must be an identity in the <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's
management account</a> or a delegated administrator account. The
specified account ID must also be a member account in the same
organization. The organization must have <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all
features enabled</a>, and the organization must have <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/">trusted
access</a> enabled for the Account Management service, and optionally a
<a
href="https://docs.aws.amazon.com/organizations/latest/userguide/">delegated
admin</a> account assigned.</p>
<p>The management account can't specify its own <code>AccountId</code>.
It must call the operation in standalone context by not including the
<code>AccountId</code> parameter.</p>
<p>To call this operation on an account that is not a member of an
organization, don't specify this parameter. Instead, call the operation
using an identity belonging to the account whose contacts you wish to
retrieve or modify.</p></td>
</tr>
<tr class="even">
<td><code
id="account_get_region_opt_status_:_RegionName">RegionName</code></td>
<td><p>[required] Specifies the Region-code for a given Region name (for
example, <code>af-south-1</code>). This function will return the status
of whatever Region you pass into this parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegionName = "string",
      RegionOptStatus = "ENABLED"|"ENABLING"|"DISABLING"|"DISABLED"|"ENABLED_BY_DEFAULT"
    )

### Request syntax

    svc$get_region_opt_status(
      AccountId = "string",
      RegionName = "string"
    )
