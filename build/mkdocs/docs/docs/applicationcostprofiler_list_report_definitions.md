<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationcostprofiler_list_report_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all reports and their configurations for your AWS account

### Description

Retrieves a list of all reports and their configurations for your AWS
account.

The maximum number of reports is one.

### Usage

    applicationcostprofiler_list_report_definitions(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationcostprofiler_list_report_definitions_:_nextToken">nextToken</code></td>
<td><p>The token value from a previous call to access the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationcostprofiler_list_report_definitions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reportDefinitions = list(
        list(
          reportId = "string",
          reportDescription = "string",
          reportFrequency = "MONTHLY"|"DAILY"|"ALL",
          format = "CSV"|"PARQUET",
          destinationS3Location = list(
            bucket = "string",
            prefix = "string"
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_report_definitions(
      nextToken = "string",
      maxResults = 123
    )
