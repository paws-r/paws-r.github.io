<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_flow_logs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more flow logs

### Description

Deletes one or more flow logs.

### Usage

    ec2_delete_flow_logs(DryRun, FlowLogIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_flow_logs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_flow_logs_:_FlowLogIds">FlowLogIds</code></td>
<td><p>[required] One or more flow log IDs.</p>
<p>Constraint: Maximum of 1000 flow log IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Unsuccessful = list(
        list(
          Error = list(
            Code = "string",
            Message = "string"
          ),
          ResourceId = "string"
        )
      )
    )

### Request syntax

    svc$delete_flow_logs(
      DryRun = TRUE|FALSE,
      FlowLogIds = list(
        "string"
      )
    )
