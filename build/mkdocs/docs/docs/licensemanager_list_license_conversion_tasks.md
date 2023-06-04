<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_license_conversion_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the license type conversion tasks for your account

### Description

Lists the license type conversion tasks for your account.

### Usage

    licensemanager_list_license_conversion_tasks(NextToken, MaxResults,
      Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_license_conversion_tasks_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_license_conversion_tasks_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_license_conversion_tasks_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. Valid filters are
<code>ResourceArns</code> and <code>Status</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConversionTasks = list(
        list(
          LicenseConversionTaskId = "string",
          ResourceArn = "string",
          SourceLicenseContext = list(
            UsageOperation = "string"
          ),
          DestinationLicenseContext = list(
            UsageOperation = "string"
          ),
          Status = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
          StatusMessage = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          LicenseConversionTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_license_conversion_tasks(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
