<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_list_resource_evaluations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of proactive resource evaluations

### Description

Returns a list of proactive resource evaluations.

### Usage

    configservice_list_resource_evaluations(Filters, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_list_resource_evaluations_:_Filters">Filters</code></td>
<td><p>Returns a <code>ResourceEvaluationFilters</code> object.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_list_resource_evaluations_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluations returned on each page. The
default is 10. You cannot specify a number greater than 100. If you
specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_list_resource_evaluations_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceEvaluations = list(
        list(
          ResourceEvaluationId = "string",
          EvaluationMode = "DETECTIVE"|"PROACTIVE",
          EvaluationStartTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_evaluations(
      Filters = list(
        EvaluationMode = "DETECTIVE"|"PROACTIVE",
        TimeWindow = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        EvaluationContextIdentifier = "string"
      ),
      Limit = 123,
      NextToken = "string"
    )
