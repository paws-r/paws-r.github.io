<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_ingestion</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and starts a new SPICE ingestion for a dataset

### Description

Creates and starts a new SPICE ingestion for a dataset. You can manually
refresh datasets in an Enterprise edition account 32 times in a 24-hour
period. You can manually refresh datasets in a Standard edition account
8 times in a 24-hour period. Each 24-hour period is measured starting 24
hours before the current date and time.

Any ingestions operating on tagged datasets inherit the same tags
automatically for use in access control. For an example, see How do I
create an IAM policy to control access to Amazon EC2 resources using
tags? in the Amazon Web Services Knowledge Center. Tags are visible on
the tagged dataset, but not on the ingestion resource.

### Usage

    quicksight_create_ingestion(DataSetId, IngestionId, AwsAccountId,
      IngestionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_ingestion_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset used in the ingestion.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_ingestion_:_IngestionId">IngestionId</code></td>
<td><p>[required] An ID for the ingestion.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_ingestion_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_ingestion_:_IngestionType">IngestionType</code></td>
<td><p>The type of ingestion that you want to create.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      IngestionId = "string",
      IngestionStatus = "INITIALIZED"|"QUEUED"|"RUNNING"|"FAILED"|"COMPLETED"|"CANCELLED",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$create_ingestion(
      DataSetId = "string",
      IngestionId = "string",
      AwsAccountId = "string",
      IngestionType = "INCREMENTAL_REFRESH"|"FULL_REFRESH"
    )
