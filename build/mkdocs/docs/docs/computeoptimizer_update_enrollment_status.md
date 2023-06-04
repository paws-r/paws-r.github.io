<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_update_enrollment_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service

### Description

Updates the enrollment (opt in and opt out) status of an account to the
Compute Optimizer service.

If the account is a management account of an organization, this action
can also be used to enroll member accounts of the organization.

You must have the appropriate permissions to opt in to Compute
Optimizer, to view its recommendations, and to opt out. For more
information, see [Controlling access with Amazon Web Services Identity
and Access
Management](https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html)
in the *Compute Optimizer User Guide*.

When you opt in, Compute Optimizer automatically creates a
service-linked role in your account to access its data. For more
information, see [Using Service-Linked Roles for Compute
Optimizer](https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_update_enrollment_status(status, includeMemberAccounts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_update_enrollment_status_:_status">status</code></td>
<td><p>[required] The new enrollment status of the account.</p>
<p>The following status options are available:</p>
<ul>
<li><p><code>Active</code> - Opts in your account to the Compute
Optimizer service. Compute Optimizer begins analyzing the configuration
and utilization metrics of your Amazon Web Services resources after you
opt in. For more information, see <a
href="https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html">Metrics
analyzed by Compute Optimizer</a> in the <em>Compute Optimizer User
Guide</em>.</p></li>
<li><p><code>Inactive</code> - Opts out your account from the Compute
Optimizer service. Your account's recommendations and related metrics
data will be deleted from Compute Optimizer after you opt out.</p></li>
</ul>
<p>The <code>Pending</code> and <code>Failed</code> options cannot be
used to update the enrollment status of an account. They are returned in
the response of a request to update the enrollment status of an
account.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_update_enrollment_status_:_includeMemberAccounts">includeMemberAccounts</code></td>
<td><p>Indicates whether to enroll member accounts of the organization
if the account is the management account of an organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = "Active"|"Inactive"|"Pending"|"Failed",
      statusReason = "string"
    )

### Request syntax

    svc$update_enrollment_status(
      status = "Active"|"Inactive"|"Pending"|"Failed",
      includeMemberAccounts = TRUE|FALSE
    )
