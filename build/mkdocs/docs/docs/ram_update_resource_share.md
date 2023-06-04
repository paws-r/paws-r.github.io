<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_update_resource_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies some of the properties of the specified resource share

### Description

Modifies some of the properties of the specified resource share.

### Usage

    ram_update_resource_share(resourceShareArn, name,
      allowExternalPrincipals, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_update_resource_share_:_resourceShareArn">resourceShareArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the resource share that you want to
modify.</p></td>
</tr>
<tr class="even">
<td><code id="ram_update_resource_share_:_name">name</code></td>
<td><p>If specified, the new name that you want to attach to the
resource share.</p></td>
</tr>
<tr class="odd">
<td><code
id="ram_update_resource_share_:_allowExternalPrincipals">allowExternalPrincipals</code></td>
<td><p>Specifies whether principals outside your organization in
Organizations can be associated with a resource share.</p></td>
</tr>
<tr class="even">
<td><code
id="ram_update_resource_share_:_clientToken">clientToken</code></td>
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

    svc$update_resource_share(
      resourceShareArn = "string",
      name = "string",
      allowExternalPrincipals = TRUE|FALSE,
      clientToken = "string"
    )
