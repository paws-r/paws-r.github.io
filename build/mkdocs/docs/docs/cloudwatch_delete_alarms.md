<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_delete_alarms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified alarms

### Description

Deletes the specified alarms. You can delete up to 100 alarms in one
operation. However, this total can include no more than one composite
alarm. For example, you could delete 99 metric alarms and one composite
alarms with one operation, but you can't delete two composite alarms
with one operation.

If you specify an incorrect alarm name or make any other error in the
operation, no alarms are deleted. To confirm that alarms were deleted
successfully, you can use the `describe_alarms` operation after using
`delete_alarms`.

It is possible to create a loop or cycle of composite alarms, where
composite alarm A depends on composite alarm B, and composite alarm B
also depends on composite alarm A. In this scenario, you can't delete
any composite alarm that is part of the cycle because there is always
still a composite alarm that depends on that alarm that you want to
delete.

To get out of such a situation, you must break the cycle by changing the
rule of one of the composite alarms in the cycle to remove a dependency
that creates the cycle. The simplest change to make to break a cycle is
to change the `AlarmRule` of one of the alarms to `false`.

Additionally, the evaluation of composite alarms stops if CloudWatch
detects a cycle in the evaluation path.

### Usage

    cloudwatch_delete_alarms(AlarmNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_delete_alarms_:_AlarmNames">AlarmNames</code></td>
<td><p>[required] The alarms to be deleted. Do not enclose the alarm
names in quote marks.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_alarms(
      AlarmNames = list(
        "string"
      )
    )
