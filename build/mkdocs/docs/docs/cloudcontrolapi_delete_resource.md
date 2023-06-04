<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_delete_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified resource

### Description

Deletes the specified resource. For details, see [Deleting a
resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html)
in the *Amazon Web Services Cloud Control API User Guide*.

After you have initiated a resource deletion request, you can monitor
the progress of your request by calling `get_resource_request_status`
using the `RequestToken` of the `ProgressEvent` returned by
`delete_resource`.

### Usage

    cloudcontrolapi_delete_resource(TypeName, TypeVersionId, RoleArn,
      ClientToken, Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_delete_resource_:_TypeName">TypeName</code></td>
<td><p>[required] The name of the resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_delete_resource_:_TypeVersionId">TypeVersionId</code></td>
<td><p>For private resource types, the type version to use in this
resource operation. If you do not specify a resource version,
CloudFormation uses the default version.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_delete_resource_:_RoleArn">RoleArn</code></td>
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
id="cloudcontrolapi_delete_resource_:_ClientToken">ClientToken</code></td>
<td><p>A unique identifier to ensure the idempotency of the resource
request. As a best practice, specify this token to ensure idempotency,
so that Amazon Web Services Cloud Control API can accurately distinguish
between request retries and new resource requests. You might retry a
resource request to ensure that it was successfully received.</p>
<p>A client token is valid for 36 hours once used. After that, a
resource request with the same client token is treated as a new
request.</p>
<p>If you do not specify a client token, one is generated for inclusion
in the request.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency">Ensuring
resource operation requests are unique</a> in the <em>Amazon Web
Services Cloud Control API User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_delete_resource_:_Identifier">Identifier</code></td>
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
      ProgressEvent = list(
        TypeName = "string",
        Identifier = "string",
        RequestToken = "string",
        Operation = "CREATE"|"DELETE"|"UPDATE",
        OperationStatus = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"CANCEL_IN_PROGRESS"|"CANCEL_COMPLETE",
        EventTime = as.POSIXct(
          "2015-01-01"
        ),
        ResourceModel = "string",
        StatusMessage = "string",
        ErrorCode = "NotUpdatable"|"InvalidRequest"|"AccessDenied"|"InvalidCredentials"|"AlreadyExists"|"NotFound"|"ResourceConflict"|"Throttling"|"ServiceLimitExceeded"|"NotStabilized"|"GeneralServiceException"|"ServiceInternalError"|"ServiceTimeout"|"NetworkFailure"|"InternalFailure",
        RetryAfter = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_resource(
      TypeName = "string",
      TypeVersionId = "string",
      RoleArn = "string",
      ClientToken = "string",
      Identifier = "string"
    )
