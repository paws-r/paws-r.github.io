<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_add_draft_app_version_resource_mappings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the resource mapping for the draft application version

### Description

Adds the resource mapping for the draft application version. You can
also update an existing resource mapping to a new physical resource.

### Usage

    resiliencehub_add_draft_app_version_resource_mappings(appArn,
      resourceMappings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_add_draft_app_version_resource_mappings_:_appArn">appArn</code></td>
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
id="resiliencehub_add_draft_app_version_resource_mappings_:_resourceMappings">resourceMappings</code></td>
<td><p>[required] Mappings used to map logical resources from the
template to physical resources. You can use the mapping type
<code>CFN_STACK</code> if the application template uses a logical stack
name. Or you can map individual resources by using the mapping type
<code>RESOURCE</code>. We recommend using the mapping type
<code>CFN_STACK</code> if the application is backed by a CloudFormation
stack.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string",
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

    svc$add_draft_app_version_resource_mappings(
      appArn = "string",
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
