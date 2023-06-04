<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudcontrolapi_create_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the specified resource

### Description

Creates the specified resource. For more information, see [Creating a
resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html)
in the *Amazon Web Services Cloud Control API User Guide*.

After you have initiated a resource creation request, you can monitor
the progress of your request by calling `get_resource_request_status`
using the `RequestToken` of the `ProgressEvent` type returned by
`create_resource`.

### Usage

    cloudcontrolapi_create_resource(TypeName, TypeVersionId, RoleArn,
      ClientToken, DesiredState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudcontrolapi_create_resource_:_TypeName">TypeName</code></td>
<td><p>[required] The name of the resource type.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudcontrolapi_create_resource_:_TypeVersionId">TypeVersionId</code></td>
<td><p>For private resource types, the type version to use in this
resource operation. If you do not specify a resource version,
CloudFormation uses the default version.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudcontrolapi_create_resource_:_RoleArn">RoleArn</code></td>
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
id="cloudcontrolapi_create_resource_:_ClientToken">ClientToken</code></td>
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
id="cloudcontrolapi_create_resource_:_DesiredState">DesiredState</code></td>
<td><p>[required] Structured data format representing the desired state
of the resource, consisting of that resource's properties and their
desired values.</p>
<p>Cloud Control API currently supports JSON as a structured data
format.</p>
<div class="sourceCode">
<pre><code> &lt;p&gt;Specify the desired state as one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A JSON blob&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A local path containing the desired state in JSON data format&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html#resource-operations-create-desiredstate&quot;&gt;Composing the desired state of the resource&lt;/a&gt; in the &lt;i&gt;Amazon Web Services Cloud Control API User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;For more information about the properties of a specific resource, refer to the related topic for the resource in the &lt;a href=&quot;https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html&quot;&gt;Resource and property types reference&lt;/a&gt; in the &lt;i&gt;CloudFormation Users Guide&lt;/i&gt;.&lt;/p&gt;</code></pre>
</div></td>
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

    svc$create_resource(
      TypeName = "string",
      TypeVersionId = "string",
      RoleArn = "string",
      ClientToken = "string",
      DesiredState = "string"
    )
