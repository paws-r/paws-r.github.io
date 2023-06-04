<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_app_version_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the resources in an Resilience Hub application

### Description

Lists all the resources in an Resilience Hub application.

### Usage

    resiliencehub_list_app_version_resources(appArn, appVersion, maxResults,
      nextToken, resolutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_list_app_version_resources_:_appArn">appArn</code></td>
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
id="resiliencehub_list_app_version_resources_:_appVersion">appVersion</code></td>
<td><p>[required] The version of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_version_resources_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_version_resources_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_version_resources_:_resolutionId">resolutionId</code></td>
<td><p>The identifier for a specific resolution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      physicalResources = list(
        list(
          additionalInfo = list(
            list(
              "string"
            )
          ),
          appComponents = list(
            list(
              additionalInfo = list(
                list(
                  "string"
                )
              ),
              id = "string",
              name = "string",
              type = "string"
            )
          ),
          excluded = TRUE|FALSE,
          logicalResourceId = list(
            eksSourceName = "string",
            identifier = "string",
            logicalStackName = "string",
            resourceGroupName = "string",
            terraformSourceName = "string"
          ),
          parentResourceName = "string",
          physicalResourceId = list(
            awsAccountId = "string",
            awsRegion = "string",
            identifier = "string",
            type = "Arn"|"Native"
          ),
          resourceName = "string",
          resourceType = "string",
          sourceType = "AppTemplate"|"Discovered"
        )
      ),
      resolutionId = "string"
    )

### Request syntax

    svc$list_app_version_resources(
      appArn = "string",
      appVersion = "string",
      maxResults = 123,
      nextToken = "string",
      resolutionId = "string"
    )
