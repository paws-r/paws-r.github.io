<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_monitor_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables detailed monitoring for a running instance

### Description

Enables detailed monitoring for a running instance. Otherwise, basic
monitoring is enabled. For more information, see [Monitor your instances
using
CloudWatch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
in the *Amazon EC2 User Guide*.

To disable detailed monitoring, see `unmonitor_instances`.

### Usage

    ec2_monitor_instances(InstanceIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_monitor_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] The IDs of the instances.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_monitor_instances_:_DryRun">DryRun</code></td>
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
      InstanceMonitorings = list(
        list(
          InstanceId = "string",
          Monitoring = list(
            State = "disabled"|"disabling"|"enabled"|"pending"
          )
        )
      )
    )

### Request syntax

    svc$monitor_instances(
      InstanceIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
