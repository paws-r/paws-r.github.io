<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_start_failback_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a Job for launching the machine that is being failed back to from the specified Recovery Instance

### Description

Initiates a Job for launching the machine that is being failed back to
from the specified Recovery Instance. This will run conversion on the
failback client and will reboot your machine, thus completing the
failback process.

### Usage

    drs_start_failback_launch(recoveryInstanceIDs, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_start_failback_launch_:_recoveryInstanceIDs">recoveryInstanceIDs</code></td>
<td><p>[required] The IDs of the Recovery Instance whose failback launch
we want to request.</p></td>
</tr>
<tr class="even">
<td><code id="drs_start_failback_launch_:_tags">tags</code></td>
<td><p>The tags to be associated with the failback launch Job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      job = list(
        arn = "string",
        creationDateTime = "string",
        endDateTime = "string",
        initiatedBy = "START_RECOVERY"|"START_DRILL"|"FAILBACK"|"DIAGNOSTIC"|"TERMINATE_RECOVERY_INSTANCES"|"TARGET_ACCOUNT",
        jobID = "string",
        participatingServers = list(
          list(
            launchStatus = "PENDING"|"IN_PROGRESS"|"LAUNCHED"|"FAILED"|"TERMINATED",
            recoveryInstanceID = "string",
            sourceServerID = "string"
          )
        ),
        status = "PENDING"|"STARTED"|"COMPLETED",
        tags = list(
          "string"
        ),
        type = "LAUNCH"|"TERMINATE"|"CREATE_CONVERTED_SNAPSHOT"
      )
    )

### Request syntax

    svc$start_failback_launch(
      recoveryInstanceIDs = list(
        "string"
      ),
      tags = list(
        "string"
      )
    )
