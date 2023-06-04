<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_cancel_ingestion</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an ongoing ingestion of data into SPICE

### Description

Cancels an ongoing ingestion of data into SPICE.

### Usage

    quicksight_cancel_ingestion(AwsAccountId, DataSetId, IngestionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_cancel_ingestion_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_cancel_ingestion_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset used in the ingestion.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_cancel_ingestion_:_IngestionId">IngestionId</code></td>
<td><p>[required] An ID for the ingestion.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      IngestionId = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$cancel_ingestion(
      AwsAccountId = "string",
      DataSetId = "string",
      IngestionId = "string"
    )
