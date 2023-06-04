<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_app_input_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the input sources of the Resilience Hub application

### Description

Lists all the input sources of the Resilience Hub application. For more
information about the input sources supported by Resilience Hub, see
[Discover the structure and describe your Resilience Hub
application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).

### Usage

    resiliencehub_list_app_input_sources(appArn, appVersion, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_list_app_input_sources_:_appArn">appArn</code></td>
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
id="resiliencehub_list_app_input_sources_:_appVersion">appVersion</code></td>
<td><p>[required] The Resilience Hub application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_input_sources_:_maxResults">maxResults</code></td>
<td><p>Maximum number of input sources to be displayed per Resilience
Hub application.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_input_sources_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appInputSources = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_app_input_sources(
      appArn = "string",
      appVersion = "string",
      maxResults = 123,
      nextToken = "string"
    )
