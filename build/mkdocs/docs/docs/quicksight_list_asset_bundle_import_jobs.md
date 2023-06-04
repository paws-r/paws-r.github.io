<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_asset_bundle_import_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all asset bundle import jobs that have taken place in the last 14 days

### Description

Lists all asset bundle import jobs that have taken place in the last 14
days. Jobs created more than 14 days ago are deleted forever and are not
returned. If you are using the same job ID for multiple jobs,
`list_asset_bundle_import_jobs` only returns the most recent job that
uses the repeated job ID.

### Usage

    quicksight_list_asset_bundle_import_jobs(AwsAccountId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_asset_bundle_import_jobs_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that the
import jobs were executed in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_asset_bundle_import_jobs_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_asset_bundle_import_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssetBundleImportJobSummaryList = list(
        list(
          JobStatus = "QUEUED_FOR_IMMEDIATE_EXECUTION"|"IN_PROGRESS"|"SUCCESSFUL"|"FAILED"|"FAILED_ROLLBACK_IN_PROGRESS"|"FAILED_ROLLBACK_COMPLETED"|"FAILED_ROLLBACK_ERROR",
          Arn = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          AssetBundleImportJobId = "string",
          FailureAction = "DO_NOTHING"|"ROLLBACK"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_asset_bundle_import_jobs(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
