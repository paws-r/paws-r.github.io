<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_list_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified resources

### Description

Returns information about the specified resources. For more information,
see [Discovering
resources](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html)
in the *Amazon Web Services Cloud Control API User Guide*.

You can use this action to return information about existing resources
in your account and Amazon Web Services Region, whether those resources
were provisioned using Cloud Control API.

### Usage

    cloudcontrolapi_list_resources(TypeName, TypeVersionId, RoleArn,
      NextToken, MaxResults, ResourceModel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_list_resources_:_TypeName">TypeName</code></td>
<td><p>[required] The name of the resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_list_resources_:_TypeVersionId">TypeVersionId</code></td>
<td><p>For private resource types, the type version to use in this
resource operation. If you do not specify a resource version,
CloudFormation uses the default version.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_list_resources_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Identity and Access
Management (IAM) role for Cloud Control API to use when performing this
resource operation. The role specified must have the permissions
required for this operation. The necessary permissions for each event
handler are defined in the <code>handlers</code> section of the <a
href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">resource
type definition schema</a>.</p>
<p>If you do not specify a role, Cloud Control API uses a temporary
session created using your Amazon Web Services user credentials.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions">Specifying
credentials</a> in the <em>Amazon Web Services Cloud Control API User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_list_resources_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request didn't return all of the
remaining results, the response object's <code>NextToken</code>
parameter value is set to a token. To retrieve the next set of results,
call this action again and assign that token to the request object's
<code>NextToken</code> parameter. If there are no remaining results, the
previous response object's <code>NextToken</code> parameter is set to
<code>null</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_list_resources_:_MaxResults">MaxResults</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_list_resources_:_ResourceModel">ResourceModel</code></td>
<td><p>The resource model to use to select the resources to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TypeName = "string",
      ResourceDescriptions = list(
        list(
          Identifier = "string",
          Properties = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resources(
      TypeName = "string",
      TypeVersionId = "string",
      RoleArn = "string",
      NextToken = "string",
      MaxResults = 123,
      ResourceModel = "string"
    )
