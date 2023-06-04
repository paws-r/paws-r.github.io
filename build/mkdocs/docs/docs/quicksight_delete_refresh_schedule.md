<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_refresh_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a refresh schedule from a dataset

### Description

Deletes a refresh schedule from a dataset.

### Usage

    quicksight_delete_refresh_schedule(DataSetId, AwsAccountId, ScheduleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_refresh_schedule_:_DataSetId">DataSetId</code></td>
<td><p>[required] The ID of the dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_refresh_schedule_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_refresh_schedule_:_ScheduleId">ScheduleId</code></td>
<td><p>[required] The ID of the refresh schedule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      RequestId = "string",
      ScheduleId = "string",
      Arn = "string"
    )

### Request syntax

    svc$delete_refresh_schedule(
      DataSetId = "string",
      AwsAccountId = "string",
      ScheduleId = "string"
    )
