<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_list_problems</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the problems with your application

### Description

Lists the problems with your application.

### Usage

    applicationinsights_list_problems(ResourceGroupName, StartTime, EndTime,
      MaxResults, NextToken, ComponentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_list_problems_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_problems_:_StartTime">StartTime</code></td>
<td><p>The time when the problem was detected, in epoch seconds. If you
don't specify a time frame for the request, problems within the past
seven days are returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_list_problems_:_EndTime">EndTime</code></td>
<td><p>The time when the problem ended, in epoch seconds. If not
specified, problems within the past seven days are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_problems_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="applicationinsights_list_problems_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_list_problems_:_ComponentName">ComponentName</code></td>
<td><p>The name of the component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProblemList = list(
        list(
          Id = "string",
          Title = "string",
          Insights = "string",
          Status = "IGNORE"|"RESOLVED"|"PENDING"|"RECURRING",
          AffectedResource = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          SeverityLevel = "Informative"|"Low"|"Medium"|"High",
          ResourceGroupName = "string",
          Feedback = list(
            "NOT_SPECIFIED"|"USEFUL"|"NOT_USEFUL"
          ),
          RecurringCount = 123,
          LastRecurrenceTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      ResourceGroupName = "string"
    )

### Request syntax

    svc$list_problems(
      ResourceGroupName = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NextToken = "string",
      ComponentName = "string"
    )
