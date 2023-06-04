<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_flow_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the flow definitions in your account

### Description

Returns information about the flow definitions in your account.

### Usage

    sagemaker_list_flow_definitions(CreationTimeAfter, CreationTimeBefore,
      SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_flow_definitions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only flow definitions with a creation time
greater than or equal to the specified timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_flow_definitions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only flow definitions that were created
before the specified timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_flow_definitions_:_SortOrder">SortOrder</code></td>
<td><p>An optional value that specifies whether you want the results
sorted in <code>Ascending</code> or <code>Descending</code>
order.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_flow_definitions_:_NextToken">NextToken</code></td>
<td><p>A token to resume pagination.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_flow_definitions_:_MaxResults">MaxResults</code></td>
<td><p>The total number of items to return. If the total number of
available items is more than the value specified in
<code>MaxResults</code>, then a <code>NextToken</code> will be provided
in the output that you can use to resume pagination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlowDefinitionSummaries = list(
        list(
          FlowDefinitionName = "string",
          FlowDefinitionArn = "string",
          FlowDefinitionStatus = "Initializing"|"Active"|"Failed"|"Deleting",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_flow_definitions(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
