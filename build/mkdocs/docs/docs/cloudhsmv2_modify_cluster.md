<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_modify_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies AWS CloudHSM cluster

### Description

Modifies AWS CloudHSM cluster.

### Usage

    cloudhsmv2_modify_cluster(BackupRetentionPolicy, ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_modify_cluster_:_BackupRetentionPolicy">BackupRetentionPolicy</code></td>
<td><p>[required] A policy that defines how the service retains
backups.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_modify_cluster_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier (ID) of the cluster that you want to
modify. To find the cluster ID, use
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

    svc$modify_cluster(
      BackupRetentionPolicy = list(
        Type = "DAYS",
        Value = "string"
      ),
      ClusterId = "string"
    )
