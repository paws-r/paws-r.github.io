<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_update_launch_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a LaunchConfiguration by Source Server ID

### Description

Updates a LaunchConfiguration by Source Server ID.

### Usage

    drs_update_launch_configuration(copyPrivateIp, copyTags,
      launchDisposition, licensing, name, sourceServerID,
      targetInstanceTypeRightSizingMethod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_update_launch_configuration_:_copyPrivateIp">copyPrivateIp</code></td>
<td><p>Whether we should copy the Private IP of the Source Server to the
Recovery Instance.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_launch_configuration_:_copyTags">copyTags</code></td>
<td><p>Whether we want to copy the tags of the Source Server to the EC2
machine of the Recovery Instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_launch_configuration_:_launchDisposition">launchDisposition</code></td>
<td><p>The state of the Recovery Instance in EC2 after the recovery
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_launch_configuration_:_licensing">licensing</code></td>
<td><p>The licensing configuration to be used for this launch
configuration.</p></td>
</tr>
<tr class="odd">
<td><code id="drs_update_launch_configuration_:_name">name</code></td>
<td><p>The name of the launch configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_launch_configuration_:_sourceServerID">sourceServerID</code></td>
<td><p>[required] The ID of the Source Server that we want to retrieve a
Launch Configuration for.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_launch_configuration_:_targetInstanceTypeRightSizingMethod">targetInstanceTypeRightSizingMethod</code></td>
<td><p>Whether Elastic Disaster Recovery should try to automatically
choose the instance type that best matches the OS, CPU, and RAM of your
Source Server.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      copyPrivateIp = TRUE|FALSE,
      copyTags = TRUE|FALSE,
      ec2LaunchTemplateID = "string",
      launchDisposition = "STOPPED"|"STARTED",
      licensing = list(
        osByol = TRUE|FALSE
      ),
      name = "string",
      sourceServerID = "string",
      targetInstanceTypeRightSizingMethod = "NONE"|"BASIC"
    )

### Request syntax

    svc$update_launch_configuration(
      copyPrivateIp = TRUE|FALSE,
      copyTags = TRUE|FALSE,
      launchDisposition = "STOPPED"|"STARTED",
      licensing = list(
        osByol = TRUE|FALSE
      ),
      name = "string",
      sourceServerID = "string",
      targetInstanceTypeRightSizingMethod = "NONE"|"BASIC"
    )
