<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_association_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Views all executions for a specific association ID

### Description

Views all executions for a specific association ID.

### Usage

    ssm_describe_association_executions(AssociationId, Filters, MaxResults,
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
id="ssm_describe_association_executions_:_AssociationId">AssociationId</code></td>
<td><p>[required] The association ID for which you want to view
execution history details.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_association_executions_:_Filters">Filters</code></td>
<td><p>Filters for the request. You can specify the following filters
and values.</p>
<p>ExecutionId (EQUAL)</p>
<p>Status (EQUAL)</p>
<p>CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_association_executions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_association_executions_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationExecutions = list(
        list(
          AssociationId = "string",
          AssociationVersion = "string",
          ExecutionId = "string",
          Status = "string",
          DetailedStatus = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastExecutionDate = as.POSIXct(
            "2015-01-01"
          ),
          ResourceCountByStatus = "string",
          AlarmConfiguration = list(
            IgnorePollAlarmFailure = TRUE|FALSE,
            Alarms = list(
              list(
                Name = "string"
              )
            )
          ),
          TriggeredAlarms = list(
            list(
              Name = "string",
              State = "UNKNOWN"|"ALARM"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_association_executions(
      AssociationId = "string",
      Filters = list(
        list(
          Key = "ExecutionId"|"Status"|"CreatedTime",
          Value = "string",
          Type = "EQUAL"|"LESS_THAN"|"GREATER_THAN"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
