<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_create_extended_source_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an extended source server in the target Account based on the source server in staging account

### Description

Create an extended source server in the target Account based on the
source server in staging account.

### Usage

    drs_create_extended_source_server(sourceServerArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_create_extended_source_server_:_sourceServerArn">sourceServerArn</code></td>
<td><p>[required] This defines the ARN of the source server in staging
Account based on which you want to create an extended source
server.</p></td>
</tr>
<tr class="even">
<td><code id="drs_create_extended_source_server_:_tags">tags</code></td>
<td><p>A list of tags associated with the extended source
server.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      sourceServer = list(
        arn = "string",
        dataReplicationInfo = list(
          dataReplicationError = list(
            error = "AGENT_NOT_SEEN"|"SNAPSHOTS_FAILURE"|"NOT_CONVERGING"|"UNSTABLE_NETWORK"|"FAILED_TO_CREATE_SECURITY_GROUP"|"FAILED_TO_LAUNCH_REPLICATION_SERVER"|"FAILED_TO_BOOT_REPLICATION_SERVER"|"FAILED_TO_AUTHENTICATE_WITH_SERVICE"|"FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"|"FAILED_TO_CREATE_STAGING_DISKS"|"FAILED_TO_ATTACH_STAGING_DISKS"|"FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"|"FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"|"FAILED_TO_START_DATA_TRANSFER",
            rawError = "string"
          ),
          dataReplicationInitiation = list(
            nextAttemptDateTime = "string",
            startDateTime = "string",
            steps = list(
              list(
                name = "WAIT"|"CREATE_SECURITY_GROUP"|"LAUNCH_REPLICATION_SERVER"|"BOOT_REPLICATION_SERVER"|"AUTHENTICATE_WITH_SERVICE"|"DOWNLOAD_REPLICATION_SOFTWARE"|"CREATE_STAGING_DISKS"|"ATTACH_STAGING_DISKS"|"PAIR_REPLICATION_SERVER_WITH_AGENT"|"CONNECT_AGENT_TO_REPLICATION_SERVER"|"START_DATA_TRANSFER",
                status = "NOT_STARTED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"SKIPPED"
              )
            )
          ),
          dataReplicationState = "STOPPED"|"INITIATING"|"INITIAL_SYNC"|"BACKLOG"|"CREATING_SNAPSHOT"|"CONTINUOUS"|"PAUSED"|"RESCAN"|"STALLED"|"DISCONNECTED",
          etaDateTime = "string",
          lagDuration = "string",
          replicatedDisks = list(
            list(
              backloggedStorageBytes = 123,
              deviceName = "string",
              replicatedStorageBytes = 123,
              rescannedStorageBytes = 123,
              totalStorageBytes = 123
            )
          ),
          stagingAvailabilityZone = "string"
        ),
        lastLaunchResult = "NOT_STARTED"|"PENDING"|"SUCCEEDED"|"FAILED",
        lifeCycle = list(
          addedToServiceDateTime = "string",
          elapsedReplicationDuration = "string",
          firstByteDateTime = "string",
          lastLaunch = list(
            initiated = list(
              apiCallDateTime = "string",
              jobID = "string",
              type = "RECOVERY"|"DRILL"
            ),
            status = "PENDING"|"IN_PROGRESS"|"LAUNCHED"|"FAILED"|"TERMINATED"
          ),
          lastSeenByServiceDateTime = "string"
        ),
        recoveryInstanceId = "string",
        replicationDirection = "FAILOVER"|"FAILBACK",
        reversedDirectionSourceServerArn = "string",
        sourceCloudProperties = list(
          originAccountID = "string",
          originAvailabilityZone = "string",
          originRegion = "string"
        ),
        sourceProperties = list(
          cpus = list(
            list(
              cores = 123,
              modelName = "string"
            )
          ),
          disks = list(
            list(
              bytes = 123,
              deviceName = "string"
            )
          ),
          identificationHints = list(
            awsInstanceID = "string",
            fqdn = "string",
            hostname = "string",
            vmWareUuid = "string"
          ),
          lastUpdatedDateTime = "string",
          networkInterfaces = list(
            list(
              ips = list(
                "string"
              ),
              isPrimary = TRUE|FALSE,
              macAddress = "string"
            )
          ),
          os = list(
            fullString = "string"
          ),
          ramBytes = 123,
          recommendedInstanceType = "string",
          supportsNitroInstances = TRUE|FALSE
        ),
        sourceServerID = "string",
        stagingArea = list(
          errorMessage = "string",
          stagingAccountID = "string",
          stagingSourceServerArn = "string",
          status = "EXTENDED"|"EXTENSION_ERROR"|"NOT_EXTENDED"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_extended_source_server(
      sourceServerArn = "string",
      tags = list(
        "string"
      )
    )
