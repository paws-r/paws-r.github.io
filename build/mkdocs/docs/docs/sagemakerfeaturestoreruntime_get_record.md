<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerfeaturestoreruntime_get_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use for OnlineStore serving from a FeatureStore

### Description

Use for `OnlineStore` serving from a `FeatureStore`. Only the latest
records stored in the `OnlineStore` can be retrieved. If no Record with
`RecordIdentifierValue` is found, then an empty result is returned.

### Usage

    sagemakerfeaturestoreruntime_get_record(FeatureGroupName,
      RecordIdentifierValueAsString, FeatureNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_get_record_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the feature group from which you want to
retrieve a record.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemakerfeaturestoreruntime_get_record_:_RecordIdentifierValueAsString">RecordIdentifierValueAsString</code></td>
<td><p>[required] The value that corresponds to
<code>RecordIdentifier</code> type and uniquely identifies the record in
the <code>FeatureGroup</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_get_record_:_FeatureNames">FeatureNames</code></td>
<td><p>List of names of Features to be retrieved. If not specified, the
latest value for all the Features are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Record = list(
        list(
          FeatureName = "string",
          ValueAsString = "string"
        )
      )
    )

### Request syntax

    svc$get_record(
      FeatureGroupName = "string",
      RecordIdentifierValueAsString = "string",
      FeatureNames = list(
        "string"
      )
    )
