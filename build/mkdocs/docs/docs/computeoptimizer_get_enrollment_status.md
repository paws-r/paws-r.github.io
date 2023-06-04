<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_enrollment_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the enrollment (opt in) status of an account to the Compute Optimizer service

### Description

Returns the enrollment (opt in) status of an account to the Compute
Optimizer service.

If the account is the management account of an organization, this action
also confirms the enrollment status of member accounts of the
organization. Use the `get_enrollment_statuses_for_organization` action
to get detailed information about the enrollment status of member
accounts of an organization.

### Usage

    computeoptimizer_get_enrollment_status()

### Value

A list with the following syntax:

    list(
      status = "Active"|"Inactive"|"Pending"|"Failed",
      statusReason = "string",
      memberAccountsEnrolled = TRUE|FALSE,
      lastUpdatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      numberOfMemberAccountsOptedIn = 123
    )

### Request syntax

    svc$get_enrollment_status()
