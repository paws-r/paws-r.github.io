<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_start_asset_bundle_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an Asset Bundle export job

### Description

Starts an Asset Bundle export job.

An Asset Bundle export job exports specified Amazon QuickSight assets.
You can also choose to export any asset dependencies in the same job.
Export jobs run asynchronously and can be polled with a
`describe_asset_bundle_export_job` API call. When a job is successfully
completed, a download URL that contains the exported assets is returned.
The URL is valid for 5 minutes and can be refreshed with a
`describe_asset_bundle_export_job` API call. Each Amazon QuickSight
account can run up to 10 export jobs concurrently.

The API caller must have the necessary permissions in their IAM role to
access each resource before the resources can be exported.

### Usage

    quicksight_start_asset_bundle_export_job(AwsAccountId,
      AssetBundleExportJobId, ResourceArns, IncludeAllDependencies,
      ExportFormat, CloudFormationOverridePropertyConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_start_asset_bundle_export_job_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account to export
assets from.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_start_asset_bundle_export_job_:_AssetBundleExportJobId">AssetBundleExportJobId</code></td>
<td><p>[required] The ID of the job. This ID is unique while the job is
running. After the job is completed, you can reuse this ID for another
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_start_asset_bundle_export_job_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] An array of resource ARNs to export. The following
resources are supported.</p>
<ul>
<li><p><code>Analysis</code></p></li>
<li><p><code>Dashboard</code></p></li>
<li><p><code>DataSet</code></p></li>
<li><p><code>DataSource</code></p></li>
<li><p><code>RefreshSchedule</code></p></li>
<li><p><code>Theme</code></p></li>
<li><p><code>VPCConnection</code></p></li>
</ul>
<p>The API caller must have the necessary permissions in their IAM role
to access each resource before the resources can be exported.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_start_asset_bundle_export_job_:_IncludeAllDependencies">IncludeAllDependencies</code></td>
<td><p>A Boolean that determines whether all dependencies of each
resource ARN are recursively exported with the job. For example, say you
provided a Dashboard ARN to the <code>ResourceArns</code> parameter. If
you set <code>IncludeAllDependencies</code> to <code>TRUE</code>, any
theme, dataset, and dataource resource that is a dependency of the
dashboard is also exported.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_start_asset_bundle_export_job_:_ExportFormat">ExportFormat</code></td>
<td><p>[required] The export data format.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_start_asset_bundle_export_job_:_CloudFormationOverridePropertyConfiguration">CloudFormationOverridePropertyConfiguration</code></td>
<td><p>An optional collection of structures that generate CloudFormation
parameters to override the existing resource property values when the
resource is exported to a new CloudFormation template.</p>
<p>Use this field if the <code>ExportFormat</code> field of a
<code>StartAssetBundleExportJobRequest</code> API call is set to
<code>CLOUDFORMATION_JSON</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      AssetBundleExportJobId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$start_asset_bundle_export_job(
      AwsAccountId = "string",
      AssetBundleExportJobId = "string",
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
      )
    )
