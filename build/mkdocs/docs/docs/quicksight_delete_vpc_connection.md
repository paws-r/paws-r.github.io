<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a VPC connection

### Description

Deletes a VPC connection.

### Usage

    quicksight_delete_vpc_connection(AwsAccountId, VPCConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_vpc_connection_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the account
where you want to delete a VPC connection.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_vpc_connection_:_VPCConnectionId">VPCConnectionId</code></td>
<td><p>[required] The ID of the VPC connection that you're creating.
This ID is a unique identifier for each Amazon Web Services Region in an
Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      VPCConnectionId = "string",
      DeletionStatus = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETION_IN_PROGRESS"|"DELETION_FAILED"|"DELETED",
      AvailabilityStatus = "AVAILABLE"|"UNAVAILABLE"|"PARTIALLY_AVAILABLE",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_vpc_connection(
      AwsAccountId = "string",
      VPCConnectionId = "string"
    )
