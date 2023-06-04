<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_create_resource_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a resource share

### Description

Creates a resource share. You can provide a list of the [Amazon Resource
Names
(ARNs)](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
for the resources that you want to share, a list of principals you want
to share the resources with, and the permissions to grant those
principals.

Sharing a resource makes it available for use by principals outside of
the Amazon Web Services account that created the resource. Sharing
doesn't change any permissions or quotas that apply to the resource in
the account that created it.

### Usage

    ram_create_resource_share(name, resourceArns, principals, tags,
      allowExternalPrincipals, clientToken, permissionArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ram_create_resource_share_:_name">name</code></td>
<td><p>[required] Specifies the name of the resource share.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_create_resource_share_:_resourceArns">resourceArns</code></td>
<td><p>Specifies a list of one or more ARNs of the resources to
associate with the resource share.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_create_resource_share_:_principals">principals</code></td>
<td><p>Specifies a list of one or more principals to associate with the
resource share.</p>
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
<td><code id="ram_create_resource_share_:_tags">tags</code></td>
<td><p>Specifies one or more tags to attach to the resource share
itself. It doesn't attach the tags to the resources associated with the
resource share.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_create_resource_share_:_allowExternalPrincipals">allowExternalPrincipals</code></td>
<td><p>Specifies whether principals outside your organization in
Organizations can be associated with a resource share. A value of
<code>true</code> lets you share with individual Amazon Web Services
accounts that are <em>not</em> in your organization. A value of
<code>false</code> only has meaning if your account is a member of an
Amazon Web Services Organization. The default value is
<code>true</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_create_resource_share_:_clientToken">clientToken</code></td>
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
<tr class="odd">
<td><code
id="ram_create_resource_share_:_permissionArns">permissionArns</code></td>
<td><p>Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> of the RAM permission to associate with the
resource share. If you do not specify an ARN for the permission, RAM
automatically attaches the default version of the permission for each
resource type. You can associate only one permission with each resource
type included in the resource share.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceShare = list(
        resourceShareArn = "string",
        name = "string",
        owningAccountId = "string",
        allowExternalPrincipals = TRUE|FALSE,
        status = "PENDING"|"ACTIVE"|"FAILED"|"DELETING"|"DELETED",
        statusMessage = "string",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD"
      ),
      clientToken = "string"
    )

### Request syntax

    svc$create_resource_share(
      name = "string",
      resourceArns = list(
        "string"
      ),
      principals = list(
        "string"
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      allowExternalPrincipals = TRUE|FALSE,
      clientToken = "string",
      permissionArns = list(
        "string"
      )
    )
