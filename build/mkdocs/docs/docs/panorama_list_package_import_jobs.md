<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_package_import_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of package import jobs

### Description

Returns a list of package import jobs.

### Usage

    panorama_list_package_import_jobs(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_package_import_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of package import jobs to return in one page
of results.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_list_package_import_jobs_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      PackageImportJobs = list(
        list(
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          JobId = "string",
          JobType = "NODE_PACKAGE_VERSION"|"MARKETPLACE_NODE_PACKAGE_VERSION",
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "PENDING"|"SUCCEEDED"|"FAILED",
          StatusMessage = "string"
        )
      )
    )

### Request syntax

    svc$list_package_import_jobs(
      MaxResults = 123,
      NextToken = "string"
    )
