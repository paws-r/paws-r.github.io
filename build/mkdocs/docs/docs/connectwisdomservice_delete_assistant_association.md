<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_delete_assistant_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an assistant association

### Description

Deletes an assistant association.

### Usage

    connectwisdomservice_delete_assistant_association(
      assistantAssociationId, assistantId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_delete_assistant_association_:_assistantAssociationId">assistantAssociationId</code></td>
<td><p>[required] The identifier of the assistant association. Can be
either the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_delete_assistant_association_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assistant_association(
      assistantAssociationId = "string",
      assistantId = "string"
    )
