<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified AWS CloudHSM cluster

### Description

Deletes the specified AWS CloudHSM cluster. Before you can delete a
cluster, you must delete all HSMs in the cluster. To see if the cluster
contains any HSMs, use `describe_clusters`. To delete an HSM, use
`delete_hsm`.

### Usage

    cloudhsmv2_delete_cluster(ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_delete_cluster_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier (ID) of the cluster that you are
deleting. To find the cluster ID, use
<code>describe_clusters</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cluster = list(
        BackupPolicy = "DEFAULT",
        BackupRetentionPolicy = list(
          Type = "DAYS",
          Value = "string"
        ),
        ClusterId = "string",
        CreateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Hsms = list(
          list(
            AvailabilityZone = "string",
            ClusterId = "string",
            SubnetId = "string",
            EniId = "string",
            EniIp = "string",
            HsmId = "string",
            State = "CREATE_IN_PROGRESS"|"ACTIVE"|"DEGRADED"|"DELETE_IN_PROGRESS"|"DELETED",
            StateMessage = "string"
          )
        ),
        HsmType = "string",
        PreCoPassword = "string",
        SecurityGroup = "string",
        SourceBackupId = "string",
        State = "CREATE_IN_PROGRESS"|"UNINITIALIZED"|"INITIALIZE_IN_PROGRESS"|"INITIALIZED"|"ACTIVE"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DEGRADED",
        StateMessage = "string",
        SubnetMapping = list(
          "string"
        ),
        VpcId = "string",
        Certificates = list(
          ClusterCsr = "string",
          HsmCertificate = "string",
          AwsHardwareCertificate = "string",
          ManufacturerHardwareCertificate = "string",
          ClusterCertificate = "string"
        ),
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_cluster(
      ClusterId = "string"
    )
