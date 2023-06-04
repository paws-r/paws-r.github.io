<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_describe_recovery_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Recovery Instances or multiple Recovery Instances by ID

### Description

Lists all Recovery Instances or multiple Recovery Instances by ID.

### Usage

    drs_describe_recovery_instances(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_describe_recovery_instances_:_filters">filters</code></td>
<td><p>A set of filters by which to return Recovery Instances.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_describe_recovery_instances_:_maxResults">maxResults</code></td>
<td><p>Maximum number of Recovery Instances to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_describe_recovery_instances_:_nextToken">nextToken</code></td>
<td><p>The token of the next Recovery Instance to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          arn = "string",
          dataReplicationInfo = list(
            dataReplicationError = list(
              error = "AGENT_NOT_SEEN"|"FAILBACK_CLIENT_NOT_SEEN"|"NOT_CONVERGING"|"UNSTABLE_NETWORK"|"FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"|"FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"|"FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE"|"FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE"|"FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"|"FAILED_GETTING_REPLICATION_STATE"|"SNAPSHOTS_FAILURE"|"FAILED_TO_CREATE_SECURITY_GROUP"|"FAILED_TO_LAUNCH_REPLICATION_SERVER"|"FAILED_TO_BOOT_REPLICATION_SERVER"|"FAILED_TO_AUTHENTICATE_WITH_SERVICE"|"FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"|"FAILED_TO_CREATE_STAGING_DISKS"|"FAILED_TO_ATTACH_STAGING_DISKS"|"FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"|"FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"|"FAILED_TO_START_DATA_TRANSFER",
              rawError = "string"
            ),
            dataReplicationInitiation = list(
              startDateTime = "string",
              steps = list(
                list(
                  name = "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE"|"COMPLETE_VOLUME_MAPPING"|"ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"|"DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"|"CONFIGURE_REPLICATION_SOFTWARE"|"PAIR_AGENT_WITH_REPLICATION_SOFTWARE"|"ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"|"WAIT"|"CREATE_SECURITY_GROUP"|"LAUNCH_REPLICATION_SERVER"|"BOOT_REPLICATION_SERVER"|"AUTHENTICATE_WITH_SERVICE"|"DOWNLOAD_REPLICATION_SOFTWARE"|"CREATE_STAGING_DISKS"|"ATTACH_STAGING_DISKS"|"PAIR_REPLICATION_SERVER_WITH_AGENT"|"CONNECT_AGENT_TO_REPLICATION_SERVER"|"START_DATA_TRANSFER",
                  status = "NOT_STARTED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"SKIPPED"
                )
              )
            ),
            dataReplicationState = "STOPPED"|"INITIATING"|"INITIAL_SYNC"|"BACKLOG"|"CREATING_SNAPSHOT"|"CONTINUOUS"|"PAUSED"|"RESCAN"|"STALLED"|"DISCONNECTED"|"REPLICATION_STATE_NOT_AVAILABLE"|"NOT_STARTED",
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
          ec2InstanceID = "string",
          ec2InstanceState = "PENDING"|"RUNNING"|"STOPPING"|"STOPPED"|"SHUTTING-DOWN"|"TERMINATED"|"NOT_FOUND",
          failback = list(
            agentLastSeenByServiceDateTime = "string",
            elapsedReplicationDuration = "string",
            failbackClientID = "string",
            failbackClientLastSeenByServiceDateTime = "string",
            failbackInitiationTime = "string",
            failbackJobID = "string",
            failbackLaunchType = "RECOVERY"|"DRILL",
            failbackToOriginalServer = TRUE|FALSE,
            firstByteDateTime = "string",
            state = "FAILBACK_NOT_STARTED"|"FAILBACK_IN_PROGRESS"|"FAILBACK_READY_FOR_LAUNCH"|"FAILBACK_COMPLETED"|"FAILBACK_ERROR"|"FAILBACK_NOT_READY_FOR_LAUNCH"|"FAILBACK_LAUNCH_STATE_NOT_AVAILABLE"
          ),
          isDrill = TRUE|FALSE,
          jobID = "string",
          originAvailabilityZone = "string",
          originEnvironment = "ON_PREMISES"|"AWS",
          pointInTimeSnapshotDateTime = "string",
          recoveryInstanceID = "string",
          recoveryInstanceProperties = list(
            cpus = list(
              list(
                cores = 123,
                modelName = "string"
              )
            ),
            disks = list(
              list(
                bytes = 123,
                ebsVolumeID = "string",
                internalDeviceName = "string"
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
            ramBytes = 123
          ),
          sourceServerID = "string",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_recovery_instances(
      filters = list(
        recoveryInstanceIDs = list(
          "string"
        ),
        sourceServerIDs = list(
          "string"
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
