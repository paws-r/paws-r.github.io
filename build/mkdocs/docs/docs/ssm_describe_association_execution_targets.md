<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_association_execution_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Views information about a specific execution of a specific association

### Description

Views information about a specific execution of a specific association.

### Usage

    ssm_describe_association_execution_targets(AssociationId, ExecutionId,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_association_execution_targets_:_AssociationId">AssociationId</code></td>
<td><p>[required] The association ID that includes the execution for
which you want to view details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_association_execution_targets_:_ExecutionId">ExecutionId</code></td>
<td><p>[required] The execution ID for which you want to view
details.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_association_execution_targets_:_Filters">Filters</code></td>
<td><p>Filters for the request. You can specify the following filters
and values.</p>
<p>Status (EQUAL)</p>
<p>ResourceId (EQUAL)</p>
<p>ResourceType (EQUAL)</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_association_execution_targets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_association_execution_targets_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationExecutionTargets = list(
        list(
          AssociationId = "string",
          AssociationVersion = "string",
          ExecutionId = "string",
          ResourceId = "string",
          ResourceType = "string",
          Status = "string",
          DetailedStatus = "string",
          LastExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          OutputSource = list(
            OutputSourceId = "string",
            OutputSourceType = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_association_execution_targets(
      AssociationId = "string",
      ExecutionId = "string",
      Filters = list(
        list(
          Key = "Status"|"ResourceId"|"ResourceType",
          Value = "string"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
