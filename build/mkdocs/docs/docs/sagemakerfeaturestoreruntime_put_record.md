<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerfeaturestoreruntime_put_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used for data ingestion into the FeatureStore

### Description

Used for data ingestion into the `FeatureStore`. The `put_record` API
writes to both the `OnlineStore` and `OfflineStore`. If the record is
the latest record for the `recordIdentifier`, the record is written to
both the `OnlineStore` and `OfflineStore`. If the record is a historic
record, it is written only to the `OfflineStore`.

### Usage

    sagemakerfeaturestoreruntime_put_record(FeatureGroupName, Record,
      TargetStores)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_put_record_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the feature group that you want to insert
the record into.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerfeaturestoreruntime_put_record_:_Record">Record</code></td>
<td><p>[required] List of FeatureValues to be inserted. This will be a
full over-write. If you only want to update few of the feature values,
do the following:</p>
<ul>
<li><p>Use <code>get_record</code> to retrieve the latest
record.</p></li>
<li><p>Update the record returned from <code>get_record</code>.</p></li>
<li><p>Use <code>put_record</code> to update feature values.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_put_record_:_TargetStores">TargetStores</code></td>
<td><p>A list of stores to which you're adding the record. By default,
Feature Store adds the record to all of the stores that you're using for
the <code>FeatureGroup</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_record(
      FeatureGroupName = "string",
      Record = list(
        list(
          FeatureName = "string",
          ValueAsString = "string"
        )
      ),
      TargetStores = list(
        "OnlineStore"|"OfflineStore"
      )
    )
