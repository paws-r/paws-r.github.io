<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemakerfeaturestoreruntime_batch_get_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a batch of Records from a FeatureGroup

### Description

Retrieves a batch of `Records` from a `FeatureGroup`.

### Usage

    sagemakerfeaturestoreruntime_batch_get_record(Identifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemakerfeaturestoreruntime_batch_get_record_:_Identifiers">Identifiers</code></td>
<td><p>[required] A list of <code>FeatureGroup</code> names, with their
corresponding <code>RecordIdentifier</code> value, and Feature name that
have been requested to be retrieved in batch.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          FeatureGroupName = "string",
          RecordIdentifierValueAsString = "string",
          Record = list(
            list(
              FeatureName = "string",
              ValueAsString = "string"
            )
          )
        )
      ),
      Errors = list(
        list(
          FeatureGroupName = "string",
          RecordIdentifierValueAsString = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      ),
      UnprocessedIdentifiers = list(
        list(
          FeatureGroupName = "string",
          RecordIdentifiersValueAsString = list(
            "string"
          ),
          FeatureNames = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_get_record(
      Identifiers = list(
        list(
          FeatureGroupName = "string",
          RecordIdentifiersValueAsString = list(
            "string"
          ),
          FeatureNames = list(
            "string"
          )
        )
      )
    )
