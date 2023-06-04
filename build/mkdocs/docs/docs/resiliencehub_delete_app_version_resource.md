<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_delete_app_version_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource from the Resilience Hub application

### Description

Deletes a resource from the Resilience Hub application.

-   You can only delete a manually added resource. To exclude
    non-manually added resources, use the `update_app_version_resource`
    API.

-   This action has no effect outside Resilience Hub.

-   This API updates the Resilience Hub application draft version. To
    use this resource for running resiliency assessments, you must
    publish the Resilience Hub application using the
    `publish_app_version` API.

### Usage

    resiliencehub_delete_app_version_resource(appArn, awsAccountId,
      awsRegion, clientToken, logicalResourceId, physicalResourceId,
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
id="resiliencehub_delete_app_version_resource_:_appArn">appArn</code></td>
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
id="resiliencehub_delete_app_version_resource_:_awsAccountId">awsAccountId</code></td>
<td><p>The Amazon Web Services account that owns the physical
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_version_resource_:_awsRegion">awsRegion</code></td>
<td><p>The Amazon Web Services region that owns the physical
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_delete_app_version_resource_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_version_resource_:_logicalResourceId">logicalResourceId</code></td>
<td><p>The logical identifier of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_delete_app_version_resource_:_physicalResourceId">physicalResourceId</code></td>
<td><p>The physical identifier of the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_version_resource_:_resourceName">resourceName</code></td>
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

    svc$delete_app_version_resource(
      appArn = "string",
      awsAccountId = "string",
      awsRegion = "string",
      clientToken = "string",
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
