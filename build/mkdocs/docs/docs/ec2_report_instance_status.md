<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_report_instance_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits feedback about the status of an instance

### Description

Submits feedback about the status of an instance. The instance must be
in the `running` state. If your experience with the instance differs
from the instance status returned by `describe_instance_status`, use
`report_instance_status` to report your experience with the instance.
Amazon EC2 collects this information to improve the accuracy of status
checks.

Use of this action does not change the value returned by
`describe_instance_status`.

### Usage

    ec2_report_instance_status(Description, DryRun, EndTime, Instances,
      ReasonCodes, StartTime, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_report_instance_status_:_Description">Description</code></td>
<td><p>Descriptive text about the health state of your
instance.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_report_instance_status_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_report_instance_status_:_EndTime">EndTime</code></td>
<td><p>The time at which the reported instance health state
ended.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_report_instance_status_:_Instances">Instances</code></td>
<td><p>[required] The instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_report_instance_status_:_ReasonCodes">ReasonCodes</code></td>
<td><p>[required] The reason codes that describe the health state of
your instance.</p>
<ul>
<li><p><code style="white-space: pre;">⁠instance-stuck-in-state⁠</code>:
My instance is stuck in a state.</p></li>
<li><p><code>unresponsive</code>: My instance is unresponsive.</p></li>
<li><p><code>not-accepting-credentials</code>: My instance is not
accepting my credentials.</p></li>
<li><p><code>password-not-available</code>: A password is not available
for my instance.</p></li>
<li><p><code>performance-network</code>: My instance is experiencing
performance problems that I believe are network related.</p></li>
<li><p><code>performance-instance-store</code>: My instance is
experiencing performance problems that I believe are related to the
instance stores.</p></li>
<li><p><code>performance-ebs-volume</code>: My instance is experiencing
performance problems that I believe are related to an EBS
volume.</p></li>
<li><p><code>performance-other</code>: My instance is experiencing
performance problems.</p></li>
<li><p><code>other</code>: [explain using the description
parameter]</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_report_instance_status_:_StartTime">StartTime</code></td>
<td><p>The time at which the reported instance health state
began.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_report_instance_status_:_Status">Status</code></td>
<td><p>[required] The status of all instances listed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$report_instance_status(
      Description = "string",
      DryRun = TRUE|FALSE,
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Instances = list(
        "string"
      ),
      ReasonCodes = list(
        "instance-stuck-in-state"|"unresponsive"|"not-accepting-credentials"|"password-not-available"|"performance-network"|"performance-instance-store"|"performance-ebs-volume"|"performance-other"|"other"
      ),
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      Status = "ok"|"impaired"
    )
