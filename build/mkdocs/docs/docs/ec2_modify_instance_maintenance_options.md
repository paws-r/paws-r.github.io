<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_maintenance_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the recovery behavior of your instance to disable simplified automatic recovery or set the recovery behavior to default

### Description

Modifies the recovery behavior of your instance to disable simplified
automatic recovery or set the recovery behavior to default. The default
configuration will not enable simplified automatic recovery for an
unsupported instance type. For more information, see [Simplified
automatic
recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).

### Usage

    ec2_modify_instance_maintenance_options(InstanceId, AutoRecovery,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_maintenance_options_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_maintenance_options_:_AutoRecovery">AutoRecovery</code></td>
<td><p>Disables the automatic recovery behavior of your instance or sets
it to default.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_maintenance_options_:_DryRun">DryRun</code></td>
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
      InstanceId = "string",
      AutoRecovery = "disabled"|"default"
    )

### Request syntax

    svc$modify_instance_maintenance_options(
      InstanceId = "string",
      AutoRecovery = "disabled"|"default",
      DryRun = TRUE|FALSE
    )
