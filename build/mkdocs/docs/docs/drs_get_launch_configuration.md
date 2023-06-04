<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_get_launch_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a LaunchConfiguration, filtered by Source Server IDs

### Description

Gets a LaunchConfiguration, filtered by Source Server IDs.

### Usage

    drs_get_launch_configuration(sourceServerID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_get_launch_configuration_:_sourceServerID">sourceServerID</code></td>
<td><p>[required] The ID of the Source Server that we want to retrieve a
Launch Configuration for.</p></td>
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

    svc$get_launch_configuration(
      sourceServerID = "string"
    )
