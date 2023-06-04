<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_terminate_recovery_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a Job for terminating the EC2 resources associated with the specified Recovery Instances, and then will delete the Recovery Instances from the Elastic Disaster Recovery service

### Description

Initiates a Job for terminating the EC2 resources associated with the
specified Recovery Instances, and then will delete the Recovery
Instances from the Elastic Disaster Recovery service.

### Usage

    drs_terminate_recovery_instances(recoveryInstanceIDs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_terminate_recovery_instances_:_recoveryInstanceIDs">recoveryInstanceIDs</code></td>
<td><p>[required] The IDs of the Recovery Instances that should be
terminated.</p></td>
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

    svc$terminate_recovery_instances(
      recoveryInstanceIDs = list(
        "string"
      )
    )
