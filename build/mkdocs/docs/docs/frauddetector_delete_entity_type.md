<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_entity_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an entity type

### Description

Deletes an entity type.

You cannot delete an entity type that is included in an event type.

When you delete an entity type, Amazon Fraud Detector permanently
deletes that entity type and the data is no longer stored in Amazon
Fraud Detector.

### Usage

    frauddetector_delete_entity_type(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_entity_type_:_name">name</code></td>
<td><p>[required] The name of the entity type to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_entity_type(
      name = "string"
    )
