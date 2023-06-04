<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new AWS CloudHSM cluster

### Description

Creates a new AWS CloudHSM cluster.

### Usage

    cloudhsmv2_create_cluster(BackupRetentionPolicy, HsmType,
      SourceBackupId, SubnetIds, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_create_cluster_:_BackupRetentionPolicy">BackupRetentionPolicy</code></td>
<td><p>A policy that defines how the service retains backups.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsmv2_create_cluster_:_HsmType">HsmType</code></td>
<td><p>[required] The type of HSM to use in the cluster. Currently the
only allowed value is <code>hsm1.medium</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudhsmv2_create_cluster_:_SourceBackupId">SourceBackupId</code></td>
<td><p>The identifier (ID) of the cluster backup to restore. Use this
value to restore the cluster from a backup instead of creating a new
cluster. To find the backup ID, use
<code>describe_backups</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_create_cluster_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The identifiers (IDs) of the subnets where you are
creating the cluster. You must specify at least one subnet. If you
specify multiple subnets, they must meet the following criteria:</p>
<ul>
<li><p>All subnets must be in the same virtual private cloud
(VPC).</p></li>
<li><p>You can specify only one subnet per Availability Zone.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="cloudhsmv2_create_cluster_:_TagList">TagList</code></td>
<td><p>Tags to apply to the CloudHSM cluster during creation.</p></td>
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

    svc$create_cluster(
      BackupRetentionPolicy = list(
        Type = "DAYS",
        Value = "string"
      ),
      HsmType = "string",
      SourceBackupId = "string",
      SubnetIds = list(
        "string"
      ),
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
