<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>simpledb_delete_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more attributes associated with an item

### Description

Deletes one or more attributes associated with an item. If all
attributes of the item are deleted, the item is deleted.

If `delete_attributes` is called without being passed any attributes or
values specified, all the attributes for the item are deleted.

`delete_attributes` is an idempotent operation; running it multiple
times on the same item or attribute does not result in an error
response.

Because Amazon SimpleDB makes multiple copies of item data and uses an
eventual consistency update model, performing a `get_attributes` or
`select` operation (read) immediately after a `delete_attributes` or
`put_attributes` operation (write) might not return updated item data.

### Usage

    simpledb_delete_attributes(DomainName, ItemName, Attributes, Expected)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="simpledb_delete_attributes_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain in which to perform the
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="simpledb_delete_attributes_:_ItemName">ItemName</code></td>
<td><p>[required] The name of the item. Similar to rows on a
spreadsheet, items represent individual objects that contain one or more
value-attribute pairs.</p></td>
</tr>
<tr class="odd">
<td><code
id="simpledb_delete_attributes_:_Attributes">Attributes</code></td>
<td><p>A list of Attributes. Similar to columns on a spreadsheet,
attributes represent categories of data that can be assigned to
items.</p></td>
</tr>
<tr class="even">
<td><code
id="simpledb_delete_attributes_:_Expected">Expected</code></td>
<td><p>The update condition which, if specified, determines whether the
specified attributes will be deleted or not. The update condition must
be satisfied in order for this request to be processed and the
attributes to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_attributes(
      DomainName = "string",
      ItemName = "string",
      Attributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      Expected = list(
        Name = "string",
        Value = "string",
        Exists = TRUE|FALSE
      )
    )
