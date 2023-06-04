<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_get_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the current state of the specified resource

### Description

Returns information about the current state of the specified resource.
For details, see [Reading a resource's current
state](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html).

You can use this action to return information about an existing resource
in your account and Amazon Web Services Region, whether those resources
were provisioned using Cloud Control API.

### Usage

    cloudcontrolapi_get_resource(TypeName, TypeVersionId, RoleArn,
      Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_get_resource_:_TypeName">TypeName</code></td>
<td><p>[required] The name of the resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_get_resource_:_TypeVersionId">TypeVersionId</code></td>
<td><p>For private resource types, the type version to use in this
resource operation. If you do not specify a resource version,
CloudFormation uses the default version.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_get_resource_:_RoleArn">RoleArn</code></td>
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
id="cloudcontrolapi_get_resource_:_Identifier">Identifier</code></td>
<td><p>[required] The identifier for the resource.</p>
<p>You can specify the primary identifier, or any secondary identifier
defined for the resource type in its resource schema. You can only
specify one identifier. Primary identifiers can be specified as a string
or JSON; secondary identifiers must be specified as JSON.</p>
<p>For compound primary identifiers (that is, one that consists of
multiple resource properties strung together), to specify the primary
identifier as a string, list the property values <em>in the order they
are specified</em> in the primary identifier definition, separated by
<code>|</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html">Identifying
resources</a> in the <em>Amazon Web Services Cloud Control API User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TypeName = "string",
      ResourceDescription = list(
        Identifier = "string",
        Properties = "string"
      )
    )

### Request syntax

    svc$get_resource(
      TypeName = "string",
      TypeVersionId = "string",
      RoleArn = "string",
      Identifier = "string"
    )
