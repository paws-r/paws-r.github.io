<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_list_create_account_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the account creation requests that match the specified status that is currently being tracked for the organization

### Description

Lists the account creation requests that match the specified status that
is currently being tracked for the organization.

Always check the `NextToken` response parameter for a `null` value when
calling a `⁠List*⁠` operation. These operations can occasionally return an
empty set of results even when there are more results available. The
`NextToken` response parameter value is `null` *only* when there are no
more results to display.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_list_create_account_status(States, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_list_create_account_status_:_States">States</code></td>
<td><p>A list of one or more states that you want included in the
response. If this parameter isn't present, all requests are included in
the response.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_list_create_account_status_:_NextToken">NextToken</code></td>
<td><p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A
<code>NextToken</code> response indicates that more output is available.
Set this parameter to the value of the previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_list_create_account_status_:_MaxResults">MaxResults</code></td>
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
      CreateAccountStatuses = list(
        list(
          Id = "string",
          AccountName = "string",
          State = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
          RequestedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          CompletedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          AccountId = "string",
          GovCloudAccountId = "string",
          FailureReason = "ACCOUNT_LIMIT_EXCEEDED"|"EMAIL_ALREADY_EXISTS"|"INVALID_ADDRESS"|"INVALID_EMAIL"|"CONCURRENT_ACCOUNT_MODIFICATION"|"INTERNAL_FAILURE"|"GOVCLOUD_ACCOUNT_ALREADY_EXISTS"|"MISSING_BUSINESS_VALIDATION"|"FAILED_BUSINESS_VALIDATION"|"PENDING_BUSINESS_VALIDATION"|"INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"|"UNKNOWN_BUSINESS_VALIDATION"|"MISSING_PAYMENT_INSTRUMENT"|"INVALID_PAYMENT_INSTRUMENT"|"UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_create_account_status(
      States = list(
        "IN_PROGRESS"|"SUCCEEDED"|"FAILED"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example shows a user requesting a list of only the
    # completed account creation requests made for the current organization:
    svc$list_create_account_status(
      States = list(
        "SUCCEEDED"
      )
    )

    # The following example shows a user requesting a list of only the
    # in-progress account creation requests made for the current organization:
    svc$list_create_account_status(
      States = list(
        "IN_PROGRESS"
      )
    )

    ## End(Not run)
