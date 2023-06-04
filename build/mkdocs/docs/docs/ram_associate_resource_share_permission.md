<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_associate_resource_share_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or replaces the RAM permission for a resource type included in a resource share

### Description

Adds or replaces the RAM permission for a resource type included in a
resource share. You can have exactly one permission associated with each
resource type in the resource share. You can add a new RAM permission
only if there are currently no resources of that resource type currently
in the resource share.

### Usage

    ram_associate_resource_share_permission(resourceShareArn, permissionArn,
      replace, clientToken, permissionVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_associate_resource_share_permission_:_resourceShareArn">resourceShareArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the resource share to which you want to add
or replace permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_associate_resource_share_permission_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the RAM permission to associate with the
resource share. To find the ARN for a permission, use either the
<code>list_permissions</code> operation or go to the Permissions library
page in the RAM console and then choose the name of the permission. The
ARN is displayed on the detail page.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_associate_resource_share_permission_:_replace">replace</code></td>
<td><p>Specifies whether the specified permission should replace the
existing permission associated with the resource share. Use
<code>true</code> to replace the current permissions. Use
<code>false</code> to add the permission to a resource share that
currently doesn't have a permission. The default value is
<code>false</code>.</p>
<p>A resource share can have only one permission per resource type. If a
resource share already has a permission for the specified resource type
and you don't set <code>replace</code> to <code>true</code> then the
operation returns an error. This helps prevent accidental overwriting of
a permission.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_associate_resource_share_permission_:_clientToken">clientToken</code></td>
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
id="ram_associate_resource_share_permission_:_permissionVersion">permissionVersion</code></td>
<td><p>Specifies the version of the RAM permission to associate with the
resource share. You can specify <em>only</em> the version that is
currently set as the default version for the permission. If you also set
the <code>replace</code> pararameter to <code>true</code>, then this
operation updates an outdated version of the permission to the current
default version.</p>
<p>You don't need to specify this parameter because the default behavior
is to use the version that is currently set as the default version for
the permission. This parameter is supported for backwards
compatibility.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      returnValue = TRUE|FALSE,
      clientToken = "string"
    )

### Request syntax

    svc$associate_resource_share_permission(
      resourceShareArn = "string",
      permissionArn = "string",
      replace = TRUE|FALSE,
      clientToken = "string",
      permissionVersion = 123
    )
