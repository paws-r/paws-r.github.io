<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_windows_for_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the maintenance window targets or tasks that a managed node is associated with

### Description

Retrieves information about the maintenance window targets or tasks that
a managed node is associated with.

### Usage

    ssm_describe_maintenance_windows_for_target(Targets, ResourceType,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_windows_for_target_:_Targets">Targets</code></td>
<td><p>[required] The managed node ID or key-value pair to retrieve
information about.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_windows_for_target_:_ResourceType">ResourceType</code></td>
<td><p>[required] The type of resource you want to retrieve information
about. For example, <code>INSTANCE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_windows_for_target_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_windows_for_target_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowIdentities = list(
        list(
          WindowId = "string",
          Name = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_windows_for_target(
      Targets = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      ResourceType = "INSTANCE"|"RESOURCE_GROUP",
      MaxResults = 123,
      NextToken = "string"
    )
