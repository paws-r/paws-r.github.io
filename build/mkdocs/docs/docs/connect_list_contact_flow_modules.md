<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_contact_flow_modules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the flow modules for the specified Amazon Connect instance

### Description

Provides information about the flow modules for the specified Amazon
Connect instance.

### Usage

    connect_list_contact_flow_modules(InstanceId, NextToken, MaxResults,
      ContactFlowModuleState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_contact_flow_modules_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_flow_modules_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_contact_flow_modules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_flow_modules_:_ContactFlowModuleState">ContactFlowModuleState</code></td>
<td><p>The state of the flow module.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactFlowModulesSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          State = "ACTIVE"|"ARCHIVED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contact_flow_modules(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123,
      ContactFlowModuleState = "ACTIVE"|"ARCHIVED"
    )
