<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_replace_permission_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates all resource shares that use a managed permission to a different managed permission

### Description

Updates all resource shares that use a managed permission to a different
managed permission. This operation always applies the default version of
the target managed permission. You can optionally specify that the
update applies to only resource shares that currently use a specified
version. This enables you to update to the latest version, without
changing the which managed permission is used.

You can use this operation to update all of your resource shares to use
the current default version of the permission by specifying the same
value for the `fromPermissionArn` and `toPermissionArn` parameters.

You can use the optional `fromPermissionVersion` parameter to update
only those resources that use a specified version of the managed
permission to the new managed permission.

To successfully perform this operation, you must have permission to
update the resource-based policy on all affected resource types.

### Usage

    ram_replace_permission_associations(fromPermissionArn,
      fromPermissionVersion, toPermissionArn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_replace_permission_associations_:_fromPermissionArn">fromPermissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the managed permission that you want to
replace.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_replace_permission_associations_:_fromPermissionVersion">fromPermissionVersion</code></td>
<td><p>Specifies that you want to updated the permissions for only those
resource shares that use the specified version of the managed
permission.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_replace_permission_associations_:_toPermissionArn">toPermissionArn</code></td>
<td><p>[required] Specifies the ARN of the managed permission that you
want to associate with resource shares in place of the one specified by
<code>fromPerssionArn</code> and <code>fromPermissionVersion</code>.</p>
<p>The operation always associates the version that is currently the
default for the specified managed permission.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_replace_permission_associations_:_clientToken">clientToken</code></td>
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
      replacePermissionAssociationsWork = list(
        id = "string",
        fromPermissionArn = "string",
        fromPermissionVersion = "string",
        toPermissionArn = "string",
        toPermissionVersion = "string",
        status = "IN_PROGRESS"|"COMPLETED"|"FAILED",
        statusMessage = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      clientToken = "string"
    )

### Request syntax

    svc$replace_permission_associations(
      fromPermissionArn = "string",
      fromPermissionVersion = 123,
      toPermissionArn = "string",
      clientToken = "string"
    )
