<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroupstaggingapi_describe_report_creation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the status of the StartReportCreation operation

### Description

Describes the status of the `start_report_creation` operation.

You can call this operation only from the organization's management
account and from the us-east-1 Region.

### Usage

    resourcegroupstaggingapi_describe_report_creation()

### Value

A list with the following syntax:

    list(
      Status = "string",
      S3Location = "string",
      ErrorMessage = "string"
    )

### Request syntax

    svc$describe_report_creation()
