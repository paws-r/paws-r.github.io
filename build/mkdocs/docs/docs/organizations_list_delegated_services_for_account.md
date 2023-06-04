<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_list_delegated_services_for_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the Amazon Web Services services for which the specified account is a delegated administrator

### Description

List the Amazon Web Services services for which the specified account is
a delegated administrator.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_list_delegated_services_for_account(AccountId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_list_delegated_services_for_account_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID number of a delegated administrator
account in the organization.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_list_delegated_services_for_account_:_NextToken">NextToken</code></td>
<td><p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A
<code>NextToken</code> response indicates that more output is available.
Set this parameter to the value of the previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_list_delegated_services_for_account_:_MaxResults">MaxResults</code></td>
<td><p>The total number of results that you want included on each page
of the response. If you do not include this parameter, it defaults to a
value that is specific to the operation. If additional items exist
beyond the maximum you specify, the <code>NextToken</code> response
element is present and has a value (is not null). Include that value as
the <code>NextToken</code> request parameter in the next call to the
operation to get the next part of the results. Note that Organizations
might return fewer results than the maximum even when there are more
results available. You should check <code>NextToken</code> after every
operation to ensure that you receive all of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DelegatedServices = list(
        list(
          ServicePrincipal = "string",
          DelegationEnabledDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_delegated_services_for_account(
      AccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
