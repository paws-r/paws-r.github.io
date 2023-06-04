<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_delete_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all versions of the intent, including the $LATEST version

### Description

Deletes all versions of the intent, including the `⁠$LATEST⁠` version. To
delete a specific version of the intent, use the `delete_intent_version`
operation.

You can delete a version of an intent only if it is not referenced. To
delete an intent that is referred to in one or more bots (see
how-it-works), you must remove those references first.

If you get the `ResourceInUseException` exception, it provides an
example reference that shows where the intent is referenced. To remove
the reference to the intent, either update the bot or delete it. If you
get the same exception when you attempt to delete the intent again,
repeat until the intent has no references and the call to
`delete_intent` is successful.

This operation requires permission for the `lex:DeleteIntent` action.

### Usage

    lexmodelbuildingservice_delete_intent(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_delete_intent_:_name">name</code></td>
<td><p>[required] The name of the intent. The name is case
sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_intent(
      name = "string"
    )
