<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_update_launch_configuration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Launch Configuration Template by ID

### Description

Updates an existing Launch Configuration Template by ID.

### Usage

    drs_update_launch_configuration_template(copyPrivateIp, copyTags,
      launchConfigurationTemplateID, launchDisposition, licensing,
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
id="drs_update_launch_configuration_template_:_copyPrivateIp">copyPrivateIp</code></td>
<td><p>Copy private IP.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_launch_configuration_template_:_copyTags">copyTags</code></td>
<td><p>Copy tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_launch_configuration_template_:_launchConfigurationTemplateID">launchConfigurationTemplateID</code></td>
<td><p>[required] Launch Configuration Template ID.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_launch_configuration_template_:_launchDisposition">launchDisposition</code></td>
<td><p>Launch disposition.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_update_launch_configuration_template_:_licensing">licensing</code></td>
<td><p>Licensing.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_update_launch_configuration_template_:_targetInstanceTypeRightSizingMethod">targetInstanceTypeRightSizingMethod</code></td>
<td><p>Target instance type right-sizing method.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      launchConfigurationTemplate = list(
        arn = "string",
        copyPrivateIp = TRUE|FALSE,
        copyTags = TRUE|FALSE,
        launchConfigurationTemplateID = "string",
        launchDisposition = "STOPPED"|"STARTED",
        licensing = list(
          osByol = TRUE|FALSE
        ),
        tags = list(
          "string"
        ),
        targetInstanceTypeRightSizingMethod = "NONE"|"BASIC"
      )
    )

### Request syntax

    svc$update_launch_configuration_template(
      copyPrivateIp = TRUE|FALSE,
      copyTags = TRUE|FALSE,
      launchConfigurationTemplateID = "string",
      launchDisposition = "STOPPED"|"STARTED",
      licensing = list(
        osByol = TRUE|FALSE
      ),
      targetInstanceTypeRightSizingMethod = "NONE"|"BASIC"
    )
