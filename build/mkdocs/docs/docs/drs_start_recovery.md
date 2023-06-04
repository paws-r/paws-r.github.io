<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_start_recovery</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Launches Recovery Instances for the specified Source Servers

### Description

Launches Recovery Instances for the specified Source Servers. For each
Source Server you may choose a point in time snapshot to launch from, or
use an on demand snapshot.

### Usage

    drs_start_recovery(isDrill, sourceServers, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_start_recovery_:_isDrill">isDrill</code></td>
<td><p>Whether this Source Server Recovery operation is a drill or
not.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_start_recovery_:_sourceServers">sourceServers</code></td>
<td><p>[required] The Source Servers that we want to start a Recovery
Job for.</p></td>
</tr>
<tr class="odd">
<td><code id="drs_start_recovery_:_tags">tags</code></td>
<td><p>The tags to be associated with the Recovery Job.</p></td>
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

    svc$start_recovery(
      isDrill = TRUE|FALSE,
      sourceServers = list(
        list(
          recoverySnapshotID = "string",
          sourceServerID = "string"
        )
      ),
      tags = list(
        "string"
      )
    )
