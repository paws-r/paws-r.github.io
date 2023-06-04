<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_promote_permission_created_from_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When you attach a resource-based policy to a resource, RAM automatically creates a resource share of featureSet=CREATED\_FROM\_POLICY with a managed permission that has the same IAM permissions as the original resource-based policy

### Description

When you attach a resource-based policy to a resource, RAM automatically
creates a resource share of `featureSet`=`CREATED_FROM_POLICY` with a
managed permission that has the same IAM permissions as the original
resource-based policy. However, this type of managed permission is
visible to only the resource share owner, and the associated resource
share can't be modified by using RAM.

This operation creates a separate, fully manageable customer managed
permission that has the same IAM permissions as the original
resource-based policy. You can associate this customer managed
permission to any resource shares.

Before you use `promote_resource_share_created_from_policy`, you should
first run this operation to ensure that you have an appropriate customer
managed permission that can be associated with the promoted resource
share.

-   The original `CREATED_FROM_POLICY` policy isn't deleted, and
    resource shares using that original policy aren't automatically
    updated.

-   You can't modify a `CREATED_FROM_POLICY` resource share so you can't
    associate the new customer managed permission by using
    `ReplacePermsissionAssociations`. However, if you use
    `promote_resource_share_created_from_policy`, that operation
    automatically associates the fully manageable customer managed
    permission to the newly promoted `STANDARD` resource share.

-   After you promote a resource share, if the original
    `CREATED_FROM_POLICY` managed permission has no other associations
    to A resource share, then RAM automatically deletes it.

### Usage

    ram_promote_permission_created_from_policy(permissionArn, name,
      clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_promote_permission_created_from_policy_:_permissionArn">permissionArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the <code>CREATED_FROM_POLICY</code>
permission that you want to promote. You can get this <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> by calling the
<code>list_resource_share_permissions</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_promote_permission_created_from_policy_:_name">name</code></td>
<td><p>[required] Specifies a name for the promoted customer managed
permission.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_promote_permission_created_from_policy_:_clientToken">clientToken</code></td>
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
      permission = list(
        arn = "string",
        version = "string",
        defaultVersion = TRUE|FALSE,
        name = "string",
        resourceType = "string",
        status = "string",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        isResourceTypeDefault = TRUE|FALSE,
        permissionType = "CUSTOMER_MANAGED"|"AWS_MANAGED",
        featureSet = "CREATED_FROM_POLICY"|"PROMOTING_TO_STANDARD"|"STANDARD",
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      ),
      clientToken = "string"
    )

### Request syntax

    svc$promote_permission_created_from_policy(
      permissionArn = "string",
      name = "string",
      clientToken = "string"
    )
