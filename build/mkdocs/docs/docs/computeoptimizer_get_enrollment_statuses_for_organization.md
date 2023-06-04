<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_enrollment_statuses_for_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account

### Description

Returns the Compute Optimizer enrollment (opt-in) status of organization
member accounts, if your account is an organization management account.

To get the enrollment status of standalone accounts, use the
`get_enrollment_status` action.

### Usage

    computeoptimizer_get_enrollment_statuses_for_organization(filters,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_enrollment_statuses_for_organization_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that returns a more
specific list of account enrollment statuses.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_enrollment_statuses_for_organization_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of account enrollment
statuses.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_enrollment_statuses_for_organization_:_maxResults">maxResults</code></td>
<td><p>The maximum number of account enrollment statuses to return with
a single request. You can specify up to 100 statuses to return with each
request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accountEnrollmentStatuses = list(
        list(
          accountId = "string",
          status = "Active"|"Inactive"|"Pending"|"Failed",
          statusReason = "string",
          lastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_enrollment_statuses_for_organization(
      filters = list(
        list(
          name = "Status",
          values = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )
