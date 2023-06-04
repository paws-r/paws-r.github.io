<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_slot_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all versions of the slot type, including the $LATEST version

### Description

Deletes all versions of the slot type, including the `⁠$LATEST⁠` version.
To delete a specific version of the slot type, use the
`delete_slot_type_version` operation.

You can delete a version of a slot type only if it is not referenced. To
delete a slot type that is referred to in one or more intents, you must
remove those references first.

If you get the `ResourceInUseException` exception, the exception
provides an example reference that shows the intent where the slot type
is referenced. To remove the reference to the slot type, either update
the intent or delete it. If you get the same exception when you attempt
to delete the slot type again, repeat until the slot type has no
references and the `delete_slot_type` call is successful.

This operation requires permission for the `lex:DeleteSlotType` action.

### Usage

    lexmodelbuildingservice_delete_slot_type(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_slot_type_:_name">name</code></td>
<td><p>[required] The name of the slot type. The name is case
sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_slot_type(
      name = "string"
    )
