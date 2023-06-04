<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_asset_bundle_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an existing export job

### Description

Describes an existing export job.

Poll job descriptions after a job starts to know the status of the job.
When a job succeeds, a URL is provided to download the exported assets'
data from. Download URLs are valid for five minutes after they are
generated. You can call the `describe_asset_bundle_export_job` API for a
new download URL as needed.

Job descriptions are available for 14 days after the job starts.

### Usage

    quicksight_describe_asset_bundle_export_job(AwsAccountId,
      AssetBundleExportJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_asset_bundle_export_job_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account the export
job is executed in.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_asset_bundle_export_job_:_AssetBundleExportJobId">AssetBundleExportJobId</code></td>
<td><p>[required] The ID of the job that you want described. The job ID
is set when you start a new job with a
<code>start_asset_bundle_export_job</code> API call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobStatus = "QUEUED_FOR_IMMEDIATE_EXECUTION"|"IN_PROGRESS"|"SUCCESSFUL"|"FAILED",
      DownloadUrl = "string",
      Errors = list(
        list(
          Arn = "string",
          Type = "string",
          Message = "string"
        )
      ),
      Arn = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      AssetBundleExportJobId = "string",
      AwsAccountId = "string",
      ResourceArns = list(
        "string"
      ),
      IncludeAllDependencies = TRUE|FALSE,
      ExportFormat = "CLOUDFORMATION_JSON"|"QUICKSIGHT_JSON",
      CloudFormationOverridePropertyConfiguration = list(
        ResourceIdOverrideConfiguration = list(
          PrefixForAllResources = TRUE|FALSE
        ),
        VPCConnections = list(
          list(
            Arn = "string",
            Properties = list(
              "Name"|"DnsResolvers"|"RoleArn"
            )
          )
        ),
        RefreshSchedules = list(
          list(
            Arn = "string",
            Properties = list(
              "StartAfterDateTime"
            )
          )
        ),
        DataSources = list(
          list(
            Arn = "string",
            Properties = list(
              "Name"|"DisableSsl"|"SecretArn"|"Username"|"Password"|"Domain"|"WorkGroup"|"Host"|"Port"|"Database"|"DataSetName"|"Catalog"|"InstanceId"|"ClusterId"|"ManifestFileLocation"|"Warehouse"|"RoleArn"
            )
          )
        ),
        DataSets = list(
          list(
            Arn = "string",
            Properties = list(
              "Name"
            )
          )
        ),
        Themes = list(
          list(
            Arn = "string",
            Properties = list(
              "Name"
            )
          )
        ),
        Analyses = list(
          list(
            Arn = "string",
            Properties = list(
              "Name"
            )
          )
        ),
        Dashboards = list(
          list(
            Arn = "string",
            Properties = list(
              "Name"
            )
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_asset_bundle_export_job(
      AwsAccountId = "string",
      AssetBundleExportJobId = "string"
    )
