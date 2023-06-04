<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_batch_put_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The BatchPutAttributes operation creates or replaces attributes within one or more items

### Description

The `batch_put_attributes` operation creates or replaces attributes
within one or more items. By using this operation, the client can
perform multiple PutAttribute operation with a single call. This helps
yield savings in round trips and latencies, enabling Amazon SimpleDB to
optimize requests and generally produce better throughput.

The client may specify the item name with the `Item.X.ItemName`
parameter. The client may specify new attributes using a combination of
the `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` parameters.
The client may specify the first attribute for the first item using the
parameters `Item.0.Attribute.0.Name` and `Item.0.Attribute.0.Value`, and
for the second attribute for the first item by the parameters
`Item.0.Attribute.1.Name` and `Item.0.Attribute.1.Value`, and so on.

Attributes are uniquely identified within an item by their name/value
combination. For example, a single item can have the attributes
`⁠{ "first_name", "first_value" }⁠` and
`⁠{ "first_name", "second_value" }⁠`. However, it cannot have two
attribute instances where both the `Item.X.Attribute.Y.Name` and
`Item.X.Attribute.Y.Value` are the same.

Optionally, the requester can supply the `Replace` parameter for each
individual value. Setting this value to `true` will cause the new
attribute values to replace the existing attribute values. For example,
if an item `I` has the attributes `⁠{ 'a', '1' }, { 'b', '2'}⁠` and
`⁠{ 'b', '3' }⁠` and the requester does a BatchPutAttributes of
`⁠{'I', 'b', '4' }⁠` with the Replace parameter set to true, the final
attributes of the item will be `⁠{ 'a', '1' }⁠` and `⁠{ 'b', '4' }⁠`,
replacing the previous values of the 'b' attribute with the new value.

You cannot specify an empty string as an item or as an attribute name.
The `batch_put_attributes` operation succeeds or fails in its entirety.
There are no partial puts.

This operation is vulnerable to exceeding the maximum URL size when
making a REST request using the HTTP GET method. This operation does not
support conditions using `Expected.X.Name`, `Expected.X.Value`, or
`Expected.X.Exists`.

You can execute multiple `batch_put_attributes` operations and other
operations in parallel. However, large numbers of concurrent
`batch_put_attributes` calls can result in Service Unavailable (503)
responses.

The following limitations are enforced for this operation:

-   256 attribute name-value pairs per item

-   1 MB request size

-   1 billion attributes per domain

-   10 GB of total user data storage per domain

-   25 item limit per `batch_put_attributes` operation

### Usage

    simpledb_batch_put_attributes(DomainName, Items)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_batch_put_attributes_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain in which the attributes are
being stored.</p></td>
</tr>
<tr class="even">
<td><code id="simpledb_batch_put_attributes_:_Items">Items</code></td>
<td><p>[required] A list of items on which to perform the
operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$batch_put_attributes(
      DomainName = "string",
      Items = list(
        list(
          Name = "string",
          Attributes = list(
            list(
              Name = "string",
              Value = "string",
              Replace = TRUE|FALSE
            )
          )
        )
      )
    )
