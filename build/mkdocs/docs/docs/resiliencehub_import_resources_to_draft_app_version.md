<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_import_resources_to_draft_app_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports resources to Resilience Hub application draft version from different input sources

### Description

Imports resources to Resilience Hub application draft version from
different input sources. For more information about the input sources
supported by Resilience Hub, see [Discover the structure and describe
your Resilience Hub
application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).

### Usage

    resiliencehub_import_resources_to_draft_app_version(appArn, eksSources,
      importStrategy, sourceArns, terraformSources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_import_resources_to_draft_app_version_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_import_resources_to_draft_app_version_:_eksSources">eksSources</code></td>
<td><p>The input sources of the Amazon Elastic Kubernetes Service
resources you need to import.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_import_resources_to_draft_app_version_:_importStrategy">importStrategy</code></td>
<td><p>The import strategy you would like to set to import resources
into Resilience Hub application.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_import_resources_to_draft_app_version_:_sourceArns">sourceArns</code></td>
<td><p>The Amazon Resource Names (ARNs) for the resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_import_resources_to_draft_app_version_:_terraformSources">terraformSources</code></td>
<td><p>A list of terraform file s3 URLs you need to import.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string",
      eksSources = list(
        list(
          eksClusterArn = "string",
          namespaces = list(
            "string"
          )
        )
      ),
      sourceArns = list(
        "string"
      ),
      status = "Pending"|"InProgress"|"Failed"|"Success",
      terraformSources = list(
        list(
          s3StateFileUrl = "string"
        )
      )
    )

### Request syntax

    svc$import_resources_to_draft_app_version(
      appArn = "string",
      eksSources = list(
        list(
          eksClusterArn = "string",
          namespaces = list(
            "string"
          )
        )
      ),
      importStrategy = "AddOnly"|"ReplaceAll",
      sourceArns = list(
        "string"
      ),
      terraformSources = list(
        list(
          s3StateFileUrl = "string"
        )
      )
    )
