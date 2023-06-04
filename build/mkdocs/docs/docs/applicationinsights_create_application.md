<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_create_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an application that is created from a resource group

### Description

Adds an application that is created from a resource group.

### Usage

    applicationinsights_create_application(ResourceGroupName,
      OpsCenterEnabled, CWEMonitorEnabled, OpsItemSNSTopicArn, Tags,
      AutoConfigEnabled, AutoCreate, GroupingType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_create_application_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_application_:_OpsCenterEnabled">OpsCenterEnabled</code></td>
<td><p>When set to <code>true</code>, creates opsItems for any problems
detected on an application.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_create_application_:_CWEMonitorEnabled">CWEMonitorEnabled</code></td>
<td><p>Indicates whether Application Insights can listen to CloudWatch
events for the application resources, such as <code
style="white-space: pre;">⁠instance terminated⁠</code>, <code
style="white-space: pre;">⁠failed deployment⁠</code>, and others.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_application_:_OpsItemSNSTopicArn">OpsItemSNSTopicArn</code></td>
<td><p>The SNS topic provided to Application Insights that is associated
to the created opsItem. Allows you to receive notifications for updates
to the opsItem.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_create_application_:_Tags">Tags</code></td>
<td><p>List of tags to add to the application. tag key
(<code>Key</code>) and an associated tag value (<code>Value</code>). The
maximum length of a tag key is 128 characters. The maximum length of a
tag value is 256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_application_:_AutoConfigEnabled">AutoConfigEnabled</code></td>
<td><p>Indicates whether Application Insights automatically configures
unmonitored resources in the resource group.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_create_application_:_AutoCreate">AutoCreate</code></td>
<td><p>Configures all of the resources in the resource group by applying
the recommended configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_create_application_:_GroupingType">GroupingType</code></td>
<td><p>Application Insights can create applications based on a resource
group or on an account. To create an account-based application using all
of the resources in the account, set this parameter to
<code>ACCOUNT_BASED</code>.</p></td>
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

    svc$create_application(
      ResourceGroupName = "string",
      OpsCenterEnabled = TRUE|FALSE,
      CWEMonitorEnabled = TRUE|FALSE,
      OpsItemSNSTopicArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AutoConfigEnabled = TRUE|FALSE,
      AutoCreate = TRUE|FALSE,
      GroupingType = "ACCOUNT_BASED"
    )
