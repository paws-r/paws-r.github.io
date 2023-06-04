<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_app_version_resource_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists how the resources in an application version are mapped/sourced from

### Description

Lists how the resources in an application version are mapped/sourced
from. Mappings can be physical resource identifiers, CloudFormation
stacks, resource-groups, or an application registry app.

### Usage

    resiliencehub_list_app_version_resource_mappings(appArn, appVersion,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_list_app_version_resource_mappings_:_appArn">appArn</code></td>
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
id="resiliencehub_list_app_version_resource_mappings_:_appVersion">appVersion</code></td>
<td><p>[required] The version of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_version_resource_mappings_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_version_resource_mappings_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      resourceMappings = list(
        list(
          appRegistryAppName = "string",
          eksSourceName = "string",
          logicalStackName = "string",
          mappingType = "CfnStack"|"Resource"|"AppRegistryApp"|"ResourceGroup"|"Terraform"|"EKS",
          physicalResourceId = list(
            awsAccountId = "string",
            awsRegion = "string",
            identifier = "string",
            type = "Arn"|"Native"
          ),
          resourceGroupName = "string",
          resourceName = "string",
          terraformSourceName = "string"
        )
      )
    )

### Request syntax

    svc$list_app_version_resource_mappings(
      appArn = "string",
      appVersion = "string",
      maxResults = 123,
      nextToken = "string"
    )
