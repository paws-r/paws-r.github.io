<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_event_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an event type

### Description

Deletes an event type.

You cannot delete an event type that is used in a detector or a model.

When you delete an event type, Amazon Fraud Detector permanently deletes
that event type and the data is no longer stored in Amazon Fraud
Detector.

### Usage

    frauddetector_delete_event_type(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_event_type_:_name">name</code></td>
<td><p>[required] The name of the event type to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_event_type(
      name = "string"
    )
