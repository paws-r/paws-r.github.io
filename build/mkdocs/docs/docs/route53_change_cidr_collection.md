<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_change_cidr_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates, changes, or deletes CIDR blocks within a collection

### Description

Creates, changes, or deletes CIDR blocks within a collection. Contains
authoritative IP information mapping blocks to one or multiple
locations.

A change request can update multiple locations in a collection at a
time, which is helpful if you want to move one or more CIDR blocks from
one location to another in one transaction, without downtime.

**Limits**

The max number of CIDR blocks included in the request is 1000. As a
result, big updates require multiple API calls.

**PUT and DELETE\_IF\_EXISTS**

Use `change_cidr_collection` to perform the following actions:

-   `PUT`: Create a CIDR block within the specified collection.

-   ` DELETE_IF_EXISTS`: Delete an existing CIDR block from the
    collection.

### Usage

    route53_change_cidr_collection(Id, CollectionVersion, Changes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_change_cidr_collection_:_Id">Id</code></td>
<td><p>[required] The UUID of the CIDR collection to update.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_change_cidr_collection_:_CollectionVersion">CollectionVersion</code></td>
<td><p>A sequential counter that Amazon Route 53 sets to 1 when you
create a collection and increments it by 1 each time you update the
collection.</p>
<p>We recommend that you use <code>ListCidrCollection</code> to get the
current value of <code>CollectionVersion</code> for the collection that
you want to update, and then include that value with the change request.
This prevents Route 53 from overwriting an intervening update:</p>
<ul>
<li><p>If the value in the request matches the value of
<code>CollectionVersion</code> in the collection, Route 53 updates the
collection.</p></li>
<li><p>If the value of <code>CollectionVersion</code> in the collection
is greater than the value in the request, the collection was changed
after you got the version number. Route 53 does not update the
collection, and it returns a <code>CidrCollectionVersionMismatch</code>
error.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53_change_cidr_collection_:_Changes">Changes</code></td>
<td><p>[required] Information about changes to a CIDR
collection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$change_cidr_collection(
      Id = "string",
      CollectionVersion = 123,
      Changes = list(
        list(
          LocationName = "string",
          Action = "PUT"|"DELETE_IF_EXISTS",
          CidrList = list(
            "string"
          )
        )
      )
    )
