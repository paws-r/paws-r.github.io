<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_disassociate_resource_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified principals or resources from participating in the specified resource share

### Description

Removes the specified principals or resources from participating in the
specified resource share.

### Usage

    ram_disassociate_resource_share(resourceShareArn, resourceArns,
      principals, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_disassociate_resource_share_:_resourceShareArn">resourceShareArn</code></td>
<td><p>[required] Specifies <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the resource share that you want to remove
resources or principals from.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_disassociate_resource_share_:_resourceArns">resourceArns</code></td>
<td><p>Specifies a list of <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> for one or more resources that you want to
remove from the resource share. After the operation runs, these
resources are no longer shared with principals associated with the
resource share.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_disassociate_resource_share_:_principals">principals</code></td>
<td><p>Specifies a list of one or more principals that no longer are to
have access to the resources in this resource share.</p>
<p>You can include the following values:</p>
<ul>
<li><p>An Amazon Web Services account ID, for example:
<code>123456789012</code></p></li>
<li><p>An <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of an organization in Organizations, for
example: <code
style="white-space: pre;">⁠organizations::123456789012:organization/o-exampleorgid⁠</code></p></li>
<li><p>An ARN of an organizational unit (OU) in Organizations, for
example: <code
style="white-space: pre;">⁠organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123⁠</code></p></li>
<li><p>An ARN of an IAM role, for example: <code
style="white-space: pre;">⁠iam::123456789012:role/rolename⁠</code></p></li>
<li><p>An ARN of an IAM user, for example: <code
style="white-space: pre;">⁠iam::123456789012user/username⁠</code></p></li>
</ul>
<p>Not all resource types can be shared with IAM roles and users. For
more information, see <a
href="https://docs.aws.amazon.com/ram/latest/userguide/#permissions-rbp-supported-resource-types">Sharing
with IAM roles and users</a> in the <em>Resource Access Manager User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_disassociate_resource_share_:_clientToken">clientToken</code></td>
<td><p>Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We recommend
that you use a <a
href="https://en.wikipedia.org/wiki/Universally_unique_identifier">UUID
type of value.</a>.</p>
<p>If you don't provide this value, then Amazon Web Services generates a
random one for you.</p>
<p>If you retry the operation with the same <code>ClientToken</code>,
but with different parameters, the retry fails with an
<code>IdempotentParameterMismatch</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceShareAssociations = list(
        list(
          resourceShareArn = "string",
          resourceShareName = "string",
          associatedEntity = "string",
          associationType = "PRINCIPAL"|"RESOURCE",
          status = "ASSOCIATING"|"ASSOCIATED"|"FAILED"|"DISASSOCIATING"|"DISASSOCIATED",
          statusMessage = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          external = TRUE|FALSE
        )
      ),
      clientToken = "string"
    )

### Request syntax

    svc$disassociate_resource_share(
      resourceShareArn = "string",
      resourceArns = list(
        "string"
      ),
      principals = list(
        "string"
      ),
      clientToken = "string"
    )
