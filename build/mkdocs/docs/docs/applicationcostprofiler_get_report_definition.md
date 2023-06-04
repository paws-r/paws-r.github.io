<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationcostprofiler_get_report_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the definition of a report already configured in AWS Application Cost Profiler

### Description

Retrieves the definition of a report already configured in AWS
Application Cost Profiler.

### Usage

    applicationcostprofiler_get_report_definition(reportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationcostprofiler_get_report_definition_:_reportId">reportId</code></td>
<td><p>[required] ID of the report to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      lastUpdated = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_report_definition(
      reportId = "string"
    )
