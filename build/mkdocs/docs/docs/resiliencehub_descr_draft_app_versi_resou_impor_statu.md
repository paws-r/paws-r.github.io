<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_describe_draft_app_version_resources_import_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of importing resources to an application version

### Description

Describes the status of importing resources to an application version.

If you get a 404 error with
`ResourceImportStatusNotFoundAppMetadataException`, you must call
`importResourcesToDraftAppVersion` after creating the application and
before calling `describeDraftAppVersionResourcesImportStatus` to obtain
the status.

### Usage

    resiliencehub_describe_draft_app_version_resources_import_status(appArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_describe_draft_app_version_resources_import_status_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string",
      errorMessage = "string",
      status = "Pending"|"InProgress"|"Failed"|"Success",
      statusChangeTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_draft_app_version_resources_import_status(
      appArn = "string"
    )
