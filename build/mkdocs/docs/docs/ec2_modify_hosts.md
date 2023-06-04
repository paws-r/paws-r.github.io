<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_hosts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the auto-placement setting of a Dedicated Host

### Description

Modify the auto-placement setting of a Dedicated Host. When
auto-placement is enabled, any instances that you launch with a tenancy
of `host` but without a specific host ID are placed onto any available
Dedicated Host in your account that has auto-placement enabled. When
auto-placement is disabled, you need to provide a host ID to have the
instance launch onto a specific host. If no host ID is provided, the
instance is launched onto a suitable host with auto-placement enabled.

You can also use this API action to modify a Dedicated Host to support
either multiple instance types in an instance family, or to support a
specific instance type only.

### Usage

    ec2_modify_hosts(AutoPlacement, HostIds, HostRecovery, InstanceType,
      InstanceFamily, HostMaintenance)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_hosts_:_AutoPlacement">AutoPlacement</code></td>
<td><p>Specify whether to enable or disable auto-placement.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_hosts_:_HostIds">HostIds</code></td>
<td><p>[required] The IDs of the Dedicated Hosts to modify.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_hosts_:_HostRecovery">HostRecovery</code></td>
<td><p>Indicates whether to enable or disable host recovery for the
Dedicated Host. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html">Host
recovery</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_hosts_:_InstanceType">InstanceType</code></td>
<td><p>Specifies the instance type to be supported by the Dedicated
Host. Specify this parameter to modify a Dedicated Host to support only
a specific instance type.</p>
<p>If you want to modify a Dedicated Host to support multiple instance
types in its current instance family, omit this parameter and specify
<strong>InstanceFamily</strong> instead. You cannot specify
<strong>InstanceType</strong> and <strong>InstanceFamily</strong> in the
same request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_hosts_:_InstanceFamily">InstanceFamily</code></td>
<td><p>Specifies the instance family to be supported by the Dedicated
Host. Specify this parameter to modify a Dedicated Host to support
multiple instance types within its current instance family.</p>
<p>If you want to modify a Dedicated Host to support a specific instance
type only, omit this parameter and specify <strong>InstanceType</strong>
instead. You cannot specify <strong>InstanceFamily</strong> and
<strong>InstanceType</strong> in the same request.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_hosts_:_HostMaintenance">HostMaintenance</code></td>
<td><p>Indicates whether to enable or disable host maintenance for the
Dedicated Host. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-maintenance.html">Host
maintenance</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Successful = list(
        "string"
      ),
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

    svc$modify_hosts(
      AutoPlacement = "on"|"off",
      HostIds = list(
        "string"
      ),
      HostRecovery = "on"|"off",
      InstanceType = "string",
      InstanceFamily = "string",
      HostMaintenance = "on"|"off"
    )
