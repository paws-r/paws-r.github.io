<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_delete_ledger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a ledger and all of its contents

### Description

Deletes a ledger and all of its contents. This action is irreversible.

If deletion protection is enabled, you must first disable it before you
can delete the ledger. You can disable it by calling the `update_ledger`
operation to set this parameter to `false`.

### Usage

    qldb_delete_ledger(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_delete_ledger_:_Name">Name</code></td>
<td><p>[required] The name of the ledger that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_ledger(
      Name = "string"
    )
