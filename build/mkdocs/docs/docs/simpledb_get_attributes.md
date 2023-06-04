<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_get_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all of the attributes associated with the specified item

### Description

Returns all of the attributes associated with the specified item.
Optionally, the attributes returned can be limited to one or more
attributes by specifying an attribute name parameter.

If the item does not exist on the replica that was accessed for this
operation, an empty set is returned. The system does not return an error
as it cannot guarantee the item does not exist on other replicas.

If GetAttributes is called without being passed any attribute names, all
the attributes for the item are returned.

### Usage

    simpledb_get_attributes(DomainName, ItemName, AttributeNames,
      ConsistentRead)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_get_attributes_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain in which to perform the
operation.</p></td>
</tr>
<tr class="even">
<td><code id="simpledb_get_attributes_:_ItemName">ItemName</code></td>
<td><p>[required] The name of the item.</p></td>
</tr>
<tr class="odd">
<td><code
id="simpledb_get_attributes_:_AttributeNames">AttributeNames</code></td>
<td><p>The names of the attributes.</p></td>
</tr>
<tr class="even">
<td><code
id="simpledb_get_attributes_:_ConsistentRead">ConsistentRead</code></td>
<td><p>Determines whether or not strong consistency should be enforced
when data is read from SimpleDB. If <code>true</code>, any data
previously written to SimpleDB will be returned. Otherwise, results will
be consistent eventually, and the client may not see data that was
written immediately before your read.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attributes = list(
        list(
          Name = "string",
          AlternateNameEncoding = "string",
          Value = "string",
          AlternateValueEncoding = "string"
        )
      )
    )

### Request syntax

    svc$get_attributes(
      DomainName = "string",
      ItemName = "string",
      AttributeNames = list(
        "string"
      ),
      ConsistentRead = TRUE|FALSE
    )
