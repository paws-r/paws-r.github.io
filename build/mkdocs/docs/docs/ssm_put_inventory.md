<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_put_inventory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Bulk update custom inventory items on one or more managed nodes

### Description

Bulk update custom inventory items on one or more managed nodes. The
request adds an inventory item, if it doesn't already exist, or updates
an inventory item, if it does exist.

### Usage

    ssm_put_inventory(InstanceId, Items)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_put_inventory_:_InstanceId">InstanceId</code></td>
<td><p>[required] An managed node ID where you want to add or update
inventory items.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_put_inventory_:_Items">Items</code></td>
<td><p>[required] The inventory items that you want to add or update on
managed nodes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Message = "string"
    )

### Request syntax

    svc$put_inventory(
      InstanceId = "string",
      Items = list(
        list(
          TypeName = "string",
          SchemaVersion = "string",
          CaptureTime = "string",
          ContentHash = "string",
          Content = list(
            list(
              "string"
            )
          ),
          Context = list(
            "string"
          )
        )
      )
    )
