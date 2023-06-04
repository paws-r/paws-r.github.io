<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_stop_failback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the failback process for a specified Recovery Instance

### Description

Stops the failback process for a specified Recovery Instance. This
changes the Failback State of the Recovery Instance back to
FAILBACK\_NOT\_STARTED.

### Usage

    drs_stop_failback(recoveryInstanceID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_stop_failback_:_recoveryInstanceID">recoveryInstanceID</code></td>
<td><p>[required] The ID of the Recovery Instance we want to stop
failback for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_failback(
      recoveryInstanceID = "string"
    )
