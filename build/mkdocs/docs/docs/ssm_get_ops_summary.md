<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_ops_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## View a summary of operations metadata (OpsData) based on specified filters and aggregators

### Description

View a summary of operations metadata (OpsData) based on specified
filters and aggregators. OpsData can include information about Amazon
Web Services Systems Manager OpsCenter operational workitems (OpsItems)
as well as information about any Amazon Web Services resource or service
configured to report OpsData to Amazon Web Services Systems Manager
Explorer.

### Usage

    ssm_get_ops_summary(SyncName, Filters, Aggregators, ResultAttributes,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_ops_summary_:_SyncName">SyncName</code></td>
<td><p>Specify the name of a resource data sync to get.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_ops_summary_:_Filters">Filters</code></td>
<td><p>Optional filters used to scope down the returned
OpsData.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_get_ops_summary_:_Aggregators">Aggregators</code></td>
<td><p>Optional aggregators that return counts of OpsData based on one
or more expressions.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_ops_summary_:_ResultAttributes">ResultAttributes</code></td>
<td><p>The OpsData data type to return.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_get_ops_summary_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_ops_summary_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entities = list(
        list(
          Id = "string",
          Data = list(
            list(
              CaptureTime = "string",
              Content = list(
                list(
                  "string"
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ops_summary(
      SyncName = "string",
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          ),
          Type = "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"|"Exists"
        )
      ),
      Aggregators = list(
        list(
          AggregatorType = "string",
          TypeName = "string",
          AttributeName = "string",
          Values = list(
            "string"
          ),
          Filters = list(
            list(
              Key = "string",
              Values = list(
                "string"
              ),
              Type = "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"|"Exists"
            )
          ),
          Aggregators = list()
        )
      ),
      ResultAttributes = list(
        list(
          TypeName = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
