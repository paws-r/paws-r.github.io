<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_add_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants an Amazon Web Service, Amazon Web Services account, or Amazon Web Services organization permission to use a function

### Description

Grants an Amazon Web Service, Amazon Web Services account, or Amazon Web
Services organization permission to use a function. You can apply the
policy at the function level, or specify a qualifier to restrict access
to a single version or alias. If you use a qualifier, the invoker must
use the full Amazon Resource Name (ARN) of that version or alias to
invoke the function. Note: Lambda does not support adding policies to
version $LATEST.

To grant permission to another account, specify the account ID as the
`Principal`. To grant permission to an organization defined in
Organizations, specify the organization ID as the `PrincipalOrgID`. For
Amazon Web Services, the principal is a domain-style identifier that the
service defines, such as `s3.amazonaws.com` or `sns.amazonaws.com`. For
Amazon Web Services, you can also specify the ARN of the associated
resource as the `SourceArn`. If you grant permission to a service
principal without specifying the source, other accounts could
potentially configure resources in their account to invoke your Lambda
function.

This operation adds a statement to a resource-based permissions policy
for the function. For more information about function policies, see
[Using resource-based policies for
Lambda](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).

### Usage

    lambda_add_permission(FunctionName, StatementId, Action, Principal,
      SourceArn, SourceAccount, EventSourceToken, Qualifier, RevisionId,
      PrincipalOrgID, FunctionUrlAuthType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lambda_add_permission_:_FunctionName">FunctionName</code></td>
<td><p>[required] The name of the Lambda function, version, or
alias.</p>
<p><strong>Name formats</strong></p>
<ul>
<li><p><strong>Function name</strong> – <code
style="white-space: pre;">⁠my-function⁠</code> (name-only), <code
style="white-space: pre;">⁠my-function:v1⁠</code> (with alias).</p></li>
<li><p><strong>Function ARN</strong> – <code
style="white-space: pre;">⁠arn:aws:lambda:us-west-2:123456789012:function:my-function⁠</code>.</p></li>
<li><p><strong>Partial ARN</strong> – <code
style="white-space: pre;">⁠123456789012:function:my-function⁠</code>.</p></li>
</ul>
<p>You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_add_permission_:_StatementId">StatementId</code></td>
<td><p>[required] A statement identifier that differentiates the
statement from others in the same policy.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_add_permission_:_Action">Action</code></td>
<td><p>[required] The action that the principal can use on the function.
For example, <code>lambda:InvokeFunction</code> or
<code>lambda:GetFunction</code>.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_add_permission_:_Principal">Principal</code></td>
<td><p>[required] The Amazon Web Service or Amazon Web Services account
that invokes the function. If you specify a service, use
<code>SourceArn</code> or <code>SourceAccount</code> to limit who can
invoke the function through that service.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_add_permission_:_SourceArn">SourceArn</code></td>
<td><p>For Amazon Web Services, the ARN of the Amazon Web Services
resource that invokes the function. For example, an Amazon S3 bucket or
Amazon SNS topic.</p>
<p>Note that Lambda configures the comparison using the
<code>StringLike</code> operator.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_add_permission_:_SourceAccount">SourceAccount</code></td>
<td><p>For Amazon Web Service, the ID of the Amazon Web Services account
that owns the resource. Use this together with <code>SourceArn</code> to
ensure that the specified account owns the resource. It is possible for
an Amazon S3 bucket to be deleted by its owner and recreated by another
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_add_permission_:_EventSourceToken">EventSourceToken</code></td>
<td><p>For Alexa Smart Home functions, a token that the invoker must
supply.</p></td>
</tr>
<tr class="even">
<td><code id="lambda_add_permission_:_Qualifier">Qualifier</code></td>
<td><p>Specify a version or alias to add permissions to a published
version of the function.</p></td>
</tr>
<tr class="odd">
<td><code id="lambda_add_permission_:_RevisionId">RevisionId</code></td>
<td><p>Update the policy only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a policy that has changed
since you last read it.</p></td>
</tr>
<tr class="even">
<td><code
id="lambda_add_permission_:_PrincipalOrgID">PrincipalOrgID</code></td>
<td><p>The identifier for your organization in Organizations. Use this
to grant permissions to all the Amazon Web Services accounts under this
organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="lambda_add_permission_:_FunctionUrlAuthType">FunctionUrlAuthType</code></td>
<td><p>The type of authentication that your function URL uses. Set to
<code>AWS_IAM</code> if you want to restrict access to authenticated
users only. Set to <code>NONE</code> if you want to bypass IAM
authentication to create a public endpoint. For more information, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security
and auth model for Lambda function URLs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Statement = "string"
    )

### Request syntax

    svc$add_permission(
      FunctionName = "string",
      StatementId = "string",
      Action = "string",
      Principal = "string",
      SourceArn = "string",
      SourceAccount = "string",
      EventSourceToken = "string",
      Qualifier = "string",
      RevisionId = "string",
      PrincipalOrgID = "string",
      FunctionUrlAuthType = "NONE"|"AWS_IAM"
    )
