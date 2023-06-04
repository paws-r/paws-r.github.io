<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_enable_reachability_analyzer_organization_sharing</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Establishes a trust relationship between Reachability Analyzer and Organizations

### Description

Establishes a trust relationship between Reachability Analyzer and
Organizations. This operation must be performed by the management
account for the organization.

After you establish a trust relationship, a user in the management
account or a delegated administrator account can run a cross-account
analysis using resources from the member accounts.

### Usage

    ec2_enable_reachability_analyzer_organization_sharing(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_enable_reachability_analyzer_organization_sharing_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$enable_reachability_analyzer_organization_sharing(
      DryRun = TRUE|FALSE
    )
