<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_describe_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the application

### Description

Describes the application.

### Usage

    applicationinsights_describe_application(ResourceGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_describe_application_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationInfo = list(
        ResourceGroupName = "string",
        LifeCycle = "string",
        OpsItemSNSTopicArn = "string",
        OpsCenterEnabled = TRUE|FALSE,
        CWEMonitorEnabled = TRUE|FALSE,
        Remarks = "string",
        AutoConfigEnabled = TRUE|FALSE,
        DiscoveryType = "RESOURCE_GROUP_BASED"|"ACCOUNT_BASED"
      )
    )

### Request syntax

    svc$describe_application(
      ResourceGroupName = "string"
    )
