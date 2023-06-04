<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_describe_launch_configuration_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Launch Configuration Templates, filtered by Launch Configuration Template IDs

### Description

Lists all Launch Configuration Templates, filtered by Launch
Configuration Template IDs

### Usage

    drs_describe_launch_configuration_templates(
      launchConfigurationTemplateIDs, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_describe_launch_configuration_templates_:_launchConfigurationTemplateIDs">launchConfigurationTemplateIDs</code></td>
<td><p>Request to filter Launch Configuration Templates list by Launch
Configuration Template ID.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_describe_launch_configuration_templates_:_maxResults">maxResults</code></td>
<td><p>Maximum results to be returned in
DescribeLaunchConfigurationTemplates.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_describe_launch_configuration_templates_:_nextToken">nextToken</code></td>
<td><p>The token of the next Launch Configuration Template to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_launch_configuration_templates(
      launchConfigurationTemplateIDs = list(
        "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )
