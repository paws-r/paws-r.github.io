<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_put_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The PutAttributes operation creates or replaces attributes in an item

### Description

The PutAttributes operation creates or replaces attributes in an item.
The client may specify new attributes using a combination of the
`Attribute.X.Name` and `Attribute.X.Value` parameters. The client
specifies the first attribute by the parameters `Attribute.0.Name` and
`Attribute.0.Value`, the second attribute by the parameters
`Attribute.1.Name` and `Attribute.1.Value`, and so on.

Attributes are uniquely identified in an item by their name/value
combination. For example, a single item can have the attributes
`⁠{ "first_name", "first_value" }⁠` and
`⁠{ \"first_name\", second_value\" }⁠`. However, it cannot have two
attribute instances where both the `Attribute.X.Name` and
`Attribute.X.Value` are the same.

Optionally, the requestor can supply the `Replace` parameter for each
individual attribute. Setting this value to `true` causes the new
attribute value to replace the existing attribute value(s). For example,
if an item has the attributes `⁠{ 'a', '1' }⁠`, `⁠{ 'b', '2'}⁠` and
`⁠{ 'b', '3' }⁠` and the requestor calls `put_attributes` using the
attributes `⁠{ 'b', '4' }⁠` with the `Replace` parameter set to true, the
final attributes of the item are changed to `⁠{ 'a', '1' }⁠` and
`⁠{ 'b', '4' }⁠`, which replaces the previous values of the 'b' attribute
with the new value.

Using `put_attributes` to replace attribute values that do not exist
will not result in an error response.

You cannot specify an empty string as an attribute name.

Because Amazon SimpleDB makes multiple copies of client data and uses an
eventual consistency update model, an immediate `get_attributes` or
`select` operation (read) immediately after a `put_attributes` or
`delete_attributes` operation (write) might not return the updated data.

The following limitations are enforced for this operation:

-   256 total attribute name-value pairs per item

-   One billion attributes per domain

-   10 GB of total user data storage per domain

### Usage

    simpledb_put_attributes(DomainName, ItemName, Attributes, Expected)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_put_attributes_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain in which to perform the
operation.</p></td>
</tr>
<tr class="even">
<td><code id="simpledb_put_attributes_:_ItemName">ItemName</code></td>
<td><p>[required] The name of the item.</p></td>
</tr>
<tr class="odd">
<td><code
id="simpledb_put_attributes_:_Attributes">Attributes</code></td>
<td><p>[required] The list of attributes.</p></td>
</tr>
<tr class="even">
<td><code id="simpledb_put_attributes_:_Expected">Expected</code></td>
<td><p>The update condition which, if specified, determines whether the
specified attributes will be updated or not. The update condition must
be satisfied in order for this request to be processed and the
attributes to be updated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_attributes(
      DomainName = "string",
      ItemName = "string",
      Attributes = list(
        list(
          Name = "string",
          Value = "string",
          Replace = TRUE|FALSE
        )
      ),
      Expected = list(
        Name = "string",
        Value = "string",
        Exists = TRUE|FALSE
      )
    )
