<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_inventory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a custom inventory type or the data associated with a custom Inventory type

### Description

Delete a custom inventory type or the data associated with a custom
Inventory type. Deleting a custom inventory type is also referred to as
deleting a custom inventory schema.

### Usage

    ssm_delete_inventory(TypeName, SchemaDeleteOption, DryRun, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_delete_inventory_:_TypeName">TypeName</code></td>
<td><p>[required] The name of the custom inventory type for which you
want to delete either all previously collected data or the inventory
type itself.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_delete_inventory_:_SchemaDeleteOption">SchemaDeleteOption</code></td>
<td><p>Use the <code>SchemaDeleteOption</code> to delete a custom
inventory type (schema). If you don't choose this option, the system
only deletes existing inventory data associated with the custom
inventory type. Choose one of the following options:</p>
<p>DisableSchema: If you choose this option, the system ignores all
inventory data for the specified version, and any earlier versions. To
enable this schema again, you must call the <code>put_inventory</code>
operation for a version greater than the disabled version.</p>
<p>DeleteSchema: This option deletes the specified custom type from the
Inventory service. You can recreate the schema later, if you
want.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_delete_inventory_:_DryRun">DryRun</code></td>
<td><p>Use this option to view a summary of the deletion request without
deleting any data or the data type. This option is useful when you only
want to understand what will be deleted. Once you validate that the data
to be deleted is what you intend to delete, you can run the same command
without specifying the <code>DryRun</code> option.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_delete_inventory_:_ClientToken">ClientToken</code></td>
<td><p>User-provided idempotency token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeletionId = "string",
      TypeName = "string",
      DeletionSummary = list(
        TotalCount = 123,
        RemainingCount = 123,
        SummaryItems = list(
          list(
            Version = "string",
            Count = 123,
            RemainingCount = 123
          )
        )
      )
    )

### Request syntax

    svc$delete_inventory(
      TypeName = "string",
      SchemaDeleteOption = "DisableSchema"|"DeleteSchema",
      DryRun = TRUE|FALSE,
      ClientToken = "string"
    )
