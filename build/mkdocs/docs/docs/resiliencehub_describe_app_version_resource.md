<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_describe_app_version_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a resource of the Resilience Hub application

### Description

Describes a resource of the Resilience Hub application.

This API accepts only one of the following parameters to descibe the
resource:

-   `resourceName`

-   `logicalResourceId`

-   `physicalResourceId` (Along with `physicalResourceId`, you can also
    provide `awsAccountId`, and `awsRegion`)

### Usage

    resiliencehub_describe_app_version_resource(appArn, appVersion,
      awsAccountId, awsRegion, logicalResourceId, physicalResourceId,
      resourceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_resource_:_appArn">appArn</code></td>
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
id="resiliencehub_describe_app_version_resource_:_appVersion">appVersion</code></td>
<td><p>[required] The Resilience Hub application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_resource_:_awsAccountId">awsAccountId</code></td>
<td><p>The Amazon Web Services account that owns the physical
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_describe_app_version_resource_:_awsRegion">awsRegion</code></td>
<td><p>The Amazon Web Services region that owns the physical
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_resource_:_logicalResourceId">logicalResourceId</code></td>
<td><p>The logical identifier of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_describe_app_version_resource_:_physicalResourceId">physicalResourceId</code></td>
<td><p>The physical identifier of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_describe_app_version_resource_:_resourceName">resourceName</code></td>
<td><p>The name of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string",
      physicalResource = list(
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
    )

### Request syntax

    svc$describe_app_version_resource(
      appArn = "string",
      appVersion = "string",
      awsAccountId = "string",
      awsRegion = "string",
      logicalResourceId = list(
        eksSourceName = "string",
        identifier = "string",
        logicalStackName = "string",
        resourceGroupName = "string",
        terraformSourceName = "string"
      ),
      physicalResourceId = "string",
      resourceName = "string"
    )
