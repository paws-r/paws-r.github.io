<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>account_list_regions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the Regions for a given account and their respective opt-in statuses

### Description

Lists all the Regions for a given account and their respective opt-in
statuses. Optionally, this list can be filtered by the
`region-opt-status-contains` parameter.

### Usage

    account_list_regions(AccountId, MaxResults, NextToken,
      RegionOptStatusContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="account_list_regions_:_AccountId">AccountId</code></td>
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
<td><code id="account_list_regions_:_MaxResults">MaxResults</code></td>
<td><p>The total number of items to return in the command’s output. If
the total number of items available is more than the value specified, a
<code>NextToken</code> is provided in the command’s output. To resume
pagination, provide the <code>NextToken</code> value in the
<code>starting-token</code> argument of a subsequent command. Do not use
the <code>NextToken</code> response element directly outside of the
Amazon Web Services CLI. For usage examples, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-pagination.html">Pagination</a>
in the <em>Amazon Web Services Command Line Interface User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="account_list_regions_:_NextToken">NextToken</code></td>
<td><p>A token used to specify where to start paginating. This is the
<code>NextToken</code> from a previously truncated response. For usage
examples, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-pagination.html">Pagination</a>
in the <em>Amazon Web Services Command Line Interface User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="account_list_regions_:_RegionOptStatusContains">RegionOptStatusContains</code></td>
<td><p>A list of Region statuses (Enabling, Enabled, Disabling,
Disabled, Enabled_by_default) to use to filter the list of Regions for a
given account. For example, passing in a value of ENABLING will only
return a list of Regions with a Region status of ENABLING.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Regions = list(
        list(
          RegionName = "string",
          RegionOptStatus = "ENABLED"|"ENABLING"|"DISABLING"|"DISABLED"|"ENABLED_BY_DEFAULT"
        )
      )
    )

### Request syntax

    svc$list_regions(
      AccountId = "string",
      MaxResults = 123,
      NextToken = "string",
      RegionOptStatusContains = list(
        "ENABLED"|"ENABLING"|"DISABLING"|"DISABLED"|"ENABLED_BY_DEFAULT"
      )
    )
