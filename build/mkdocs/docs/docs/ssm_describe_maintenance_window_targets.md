<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_window_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the targets registered with the maintenance window

### Description

Lists the targets registered with the maintenance window.

### Usage

    ssm_describe_maintenance_window_targets(WindowId, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_targets_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window whose targets should
be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_targets_:_Filters">Filters</code></td>
<td><p>Optional filters that can be used to narrow down the scope of the
returned window targets. The supported filter keys are
<code>Type</code>, <code>WindowTargetId</code>, and
<code>OwnerInformation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_targets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_targets_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Targets = list(
        list(
          WindowId = "string",
          WindowTargetId = "string",
          ResourceType = "INSTANCE"|"RESOURCE_GROUP",
          Targets = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          ),
          OwnerInformation = "string",
          Name = "string",
          Description = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_window_targets(
      WindowId = "string",
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
