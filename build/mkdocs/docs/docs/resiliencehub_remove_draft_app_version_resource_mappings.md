<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_remove_draft_app_version_resource_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes resource mappings from a draft application version

### Description

Removes resource mappings from a draft application version.

### Usage

    resiliencehub_remove_draft_app_version_resource_mappings(appArn,
      appRegistryAppNames, eksSourceNames, logicalStackNames,
      resourceGroupNames, resourceNames, terraformSourceNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_remove_draft_app_version_resource_mappings_:_appArn">appArn</code></td>
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
id="resiliencehub_remove_draft_app_version_resource_mappings_:_appRegistryAppNames">appRegistryAppNames</code></td>
<td><p>The names of the registered applications you want to remove from
the resource mappings.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_remove_draft_app_version_resource_mappings_:_eksSourceNames">eksSourceNames</code></td>
<td><p>The names of the Amazon Elastic Kubernetes Service clusters and
namespaces you want to remove from the resource mappings.</p>
<p>This parameter accepts values in "eks-cluster/namespace"
format.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_remove_draft_app_version_resource_mappings_:_logicalStackNames">logicalStackNames</code></td>
<td><p>The names of the CloudFormation stacks you want to remove from
the resource mappings.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_remove_draft_app_version_resource_mappings_:_resourceGroupNames">resourceGroupNames</code></td>
<td><p>The names of the resource groups you want to remove from the
resource mappings.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_remove_draft_app_version_resource_mappings_:_resourceNames">resourceNames</code></td>
<td><p>The names of the resources you want to remove from the resource
mappings.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_remove_draft_app_version_resource_mappings_:_terraformSourceNames">terraformSourceNames</code></td>
<td><p>The names of the Terraform sources you want to remove from the
resource mappings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string"
    )

### Request syntax

    svc$remove_draft_app_version_resource_mappings(
      appArn = "string",
      appRegistryAppNames = list(
        "string"
      ),
      eksSourceNames = list(
        "string"
      ),
      logicalStackNames = list(
        "string"
      ),
      resourceGroupNames = list(
        "string"
      ),
      resourceNames = list(
        "string"
      ),
      terraformSourceNames = list(
        "string"
      )
    )
