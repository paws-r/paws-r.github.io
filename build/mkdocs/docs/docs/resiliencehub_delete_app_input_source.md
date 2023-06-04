<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_delete_app_input_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the input source and all of its imported resources from the Resilience Hub application

### Description

Deletes the input source and all of its imported resources from the
Resilience Hub application.

### Usage

    resiliencehub_delete_app_input_source(appArn, clientToken,
      eksSourceClusterNamespace, sourceArn, terraformSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_input_source_:_appArn">appArn</code></td>
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
id="resiliencehub_delete_app_input_source_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_input_source_:_eksSourceClusterNamespace">eksSourceClusterNamespace</code></td>
<td><p>The namespace on your Amazon Elastic Kubernetes Service cluster
that you want to delete from the Resilience Hub application.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_delete_app_input_source_:_sourceArn">sourceArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the imported resource you want
to remove from the Resilience Hub application. For more information
about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_input_source_:_terraformSource">terraformSource</code></td>
<td><p>The imported Terraform s3 state ﬁle you want to remove from the
Resilience Hub application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appInputSource = list(
        eksSourceClusterNamespace = list(
          eksClusterArn = "string",
          namespace = "string"
        ),
        importType = "CfnStack"|"Resource"|"AppRegistryApp"|"ResourceGroup"|"Terraform"|"EKS",
        resourceCount = 123,
        sourceArn = "string",
        sourceName = "string",
        terraformSource = list(
          s3StateFileUrl = "string"
        )
      )
    )

### Request syntax

    svc$delete_app_input_source(
      appArn = "string",
      clientToken = "string",
      eksSourceClusterNamespace = list(
        eksClusterArn = "string",
        namespace = "string"
      ),
      sourceArn = "string",
      terraformSource = list(
        s3StateFileUrl = "string"
      )
    )
