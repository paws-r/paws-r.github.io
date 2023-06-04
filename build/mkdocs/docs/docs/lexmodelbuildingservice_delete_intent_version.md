<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_intent_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specific version of an intent

### Description

Deletes a specific version of an intent. To delete all versions of a
intent, use the `delete_intent` operation.

This operation requires permissions for the `lex:DeleteIntentVersion`
action.

### Usage

    lexmodelbuildingservice_delete_intent_version(name, version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_intent_version_:_name">name</code></td>
<td><p>[required] The name of the intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_delete_intent_version_:_version">version</code></td>
<td><p>[required] The version of the intent to delete. You cannot delete
the <code style="white-space: pre;">⁠$LATEST⁠</code> version of the
intent. To delete the <code style="white-space: pre;">⁠$LATEST⁠</code>
version, use the <code>delete_intent</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_intent_version(
      name = "string",
      version = "string"
    )
