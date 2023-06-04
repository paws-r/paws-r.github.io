<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerfeaturestoreruntime_delete_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Record from a FeatureGroup in the OnlineStore

### Description

Deletes a `Record` from a `FeatureGroup` in the `OnlineStore`. Feature
Store supports both `SOFT_DELETE` and `HARD_DELETE`. For `SOFT_DELETE`
(default), feature columns are set to `null` and the record is no longer
retrievable by `get_record` or `batch_get_record`. For` HARD_DELETE`,
the complete `Record` is removed from the `OnlineStore`. In both cases,
Feature Store appends the deleted record marker to the `OfflineStore`
with feature values set to `null`, `is_deleted` value set to `True`, and
`EventTime` set to the delete input `EventTime`.

Note that the `EventTime` specified in `delete_record` should be set
later than the `EventTime` of the existing record in the `OnlineStore`
for that `RecordIdentifer`. If it is not, the deletion does not occur:

-   For `SOFT_DELETE`, the existing (undeleted) record remains in the
    `OnlineStore`, though the delete record marker is still written to
    the `OfflineStore`.

-   `HARD_DELETE` returns `EventTime`: `⁠400 ValidationException⁠` to
    indicate that the delete operation failed. No delete record marker
    is written to the `OfflineStore`.

### Usage

    sagemakerfeaturestoreruntime_delete_record(FeatureGroupName,
      RecordIdentifierValueAsString, EventTime, TargetStores, DeletionMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_delete_record_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the feature group to delete the record
from.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerfeaturestoreruntime_delete_record_:_RecordIdentifierValueAsString">RecordIdentifierValueAsString</code></td>
<td><p>[required] The value for the <code>RecordIdentifier</code> that
uniquely identifies the record, in string format.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_delete_record_:_EventTime">EventTime</code></td>
<td><p>[required] Timestamp indicating when the deletion event occurred.
<code>EventTime</code> can be used to query data at a certain point in
time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerfeaturestoreruntime_delete_record_:_TargetStores">TargetStores</code></td>
<td><p>A list of stores from which you're deleting the record. By
default, Feature Store deletes the record from all of the stores that
you're using for the <code>FeatureGroup</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_delete_record_:_DeletionMode">DeletionMode</code></td>
<td><p>The name of the deletion mode for deleting the record. By
default, the deletion mode is set to <code>SoftDelete</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_record(
      FeatureGroupName = "string",
      RecordIdentifierValueAsString = "string",
      EventTime = "string",
      TargetStores = list(
        "OnlineStore"|"OfflineStore"
      ),
      DeletionMode = "SoftDelete"|"HardDelete"
    )
