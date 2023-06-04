<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_update_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the application

### Description

Updates the application.

### Usage

    applicationinsights_update_application(ResourceGroupName,
      OpsCenterEnabled, CWEMonitorEnabled, OpsItemSNSTopicArn, RemoveSNSTopic,
      AutoConfigEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_update_application_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_update_application_:_OpsCenterEnabled">OpsCenterEnabled</code></td>
<td><p>When set to <code>true</code>, creates opsItems for any problems
detected on an application.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_update_application_:_CWEMonitorEnabled">CWEMonitorEnabled</code></td>
<td><p>Indicates whether Application Insights can listen to CloudWatch
events for the application resources, such as <code
style="white-space: pre;">⁠instance terminated⁠</code>, <code
style="white-space: pre;">⁠failed deployment⁠</code>, and others.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_update_application_:_OpsItemSNSTopicArn">OpsItemSNSTopicArn</code></td>
<td><p>The SNS topic provided to Application Insights that is associated
to the created opsItem. Allows you to receive notifications for updates
to the opsItem.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_update_application_:_RemoveSNSTopic">RemoveSNSTopic</code></td>
<td><p>Disassociates the SNS topic from the opsItem created for detected
problems.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_update_application_:_AutoConfigEnabled">AutoConfigEnabled</code></td>
<td><p>Turns auto-configuration on or off.</p></td>
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

    svc$update_application(
      ResourceGroupName = "string",
      OpsCenterEnabled = TRUE|FALSE,
      CWEMonitorEnabled = TRUE|FALSE,
      OpsItemSNSTopicArn = "string",
      RemoveSNSTopic = TRUE|FALSE,
      AutoConfigEnabled = TRUE|FALSE
    )
