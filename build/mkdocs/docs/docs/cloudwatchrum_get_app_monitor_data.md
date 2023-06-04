<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_get_app_monitor_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data

### Description

Retrieves the raw performance events that RUM has collected from your
web application, so that you can do your own processing or analysis of
this data.

### Usage

    cloudwatchrum_get_app_monitor_data(Filters, MaxResults, Name, NextToken,
      TimeRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_get_app_monitor_data_:_Filters">Filters</code></td>
<td><p>An array of structures that you can use to filter the results to
those that match one or more sets of key-value pairs that you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_get_app_monitor_data_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_get_app_monitor_data_:_Name">Name</code></td>
<td><p>[required] The name of the app monitor that collected the data
that you want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_get_app_monitor_data_:_NextToken">NextToken</code></td>
<td><p>Use the token returned by the previous operation to request the
next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_get_app_monitor_data_:_TimeRange">TimeRange</code></td>
<td><p>[required] A structure that defines the time range that you want
to retrieve results from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Events = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_app_monitor_data(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      Name = "string",
      NextToken = "string",
      TimeRange = list(
        After = 123,
        Before = 123
      )
    )
