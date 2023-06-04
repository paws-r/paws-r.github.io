<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon OpenSearch Service domain and all of its data

### Description

Deletes an Amazon OpenSearch Service domain and all of its data. You
can't recover a domain after you delete it.

### Usage

    opensearchservice_delete_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_delete_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to permanently
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainStatus = list(
        DomainId = "string",
        DomainName = "string",
        ARN = "string",
        Created = TRUE|FALSE,
        Deleted = TRUE|FALSE,
        Endpoint = "string",
        Endpoints = list(
          "string"
        ),
        Processing = TRUE|FALSE,
        UpgradeProcessing = TRUE|FALSE,
        EngineVersion = "string",
        ClusterConfig = list(
          InstanceType = "m3.medium.search"|"m3.large.search"|"m3.xlarge.search"|"m3.2xlarge.search"|"m4.large.search"|"m4.xlarge.search"|"m4.2xlarge.search"|"m4.4xlarge.search"|"m4.10xlarge.search"|"m5.large.search"|"m5.xlarge.search"|"m5.2xlarge.search"|"m5.4xlarge.search"|"m5.12xlarge.search"|"m5.24xlarge.search"|"r5.large.search"|"r5.xlarge.search"|"r5.2xlarge.search"|"r5.4xlarge.search"|"r5.12xlarge.search"|"r5.24xlarge.search"|"c5.large.search"|"c5.xlarge.search"|"c5.2xlarge.search"|"c5.4xlarge.search"|"c5.9xlarge.search"|"c5.18xlarge.search"|"t3.nano.search"|"t3.micro.search"|"t3.small.search"|"t3.medium.search"|"t3.large.search"|"t3.xlarge.search"|"t3.2xlarge.search"|"ultrawarm1.medium.search"|"ultrawarm1.large.search"|"ultrawarm1.xlarge.search"|"t2.micro.search"|"t2.small.search"|"t2.medium.search"|"r3.large.search"|"r3.xlarge.search"|"r3.2xlarge.search"|"r3.4xlarge.search"|"r3.8xlarge.search"|"i2.xlarge.search"|"i2.2xlarge.search"|"d2.xlarge.search"|"d2.2xlarge.search"|"d2.4xlarge.search"|"d2.8xlarge.search"|"c4.large.search"|"c4.xlarge.search"|"c4.2xlarge.search"|"c4.4xlarge.search"|"c4.8xlarge.search"|"r4.large.search"|"r4.xlarge.search"|"r4.2xlarge.search"|"r4.4xlarge.search"|"r4.8xlarge.search"|"r4.16xlarge.search"|"i3.large.search"|"i3.xlarge.search"|"i3.2xlarge.search"|"i3.4xlarge.search"|"i3.8xlarge.search"|"i3.16xlarge.search"|"r6g.large.search"|"r6g.xlarge.search"|"r6g.2xlarge.search"|"r6g.4xlarge.search"|"r6g.8xlarge.search"|"r6g.12xlarge.search"|"m6g.large.search"|"m6g.xlarge.search"|"m6g.2xlarge.search"|"m6g.4xlarge.search"|"m6g.8xlarge.search"|"m6g.12xlarge.search"|"c6g.large.search"|"c6g.xlarge.search"|"c6g.2xlarge.search"|"c6g.4xlarge.search"|"c6g.8xlarge.search"|"c6g.12xlarge.search"|"r6gd.large.search"|"r6gd.xlarge.search"|"r6gd.2xlarge.search"|"r6gd.4xlarge.search"|"r6gd.8xlarge.search"|"r6gd.12xlarge.search"|"r6gd.16xlarge.search"|"t4g.small.search"|"t4g.medium.search",
          InstanceCount = 123,
          DedicatedMasterEnabled = TRUE|FALSE,
          ZoneAwarenessEnabled = TRUE|FALSE,
          ZoneAwarenessConfig = list(
            AvailabilityZoneCount = 123
          ),
          DedicatedMasterType = "m3.medium.search"|"m3.large.search"|"m3.xlarge.search"|"m3.2xlarge.search"|"m4.large.search"|"m4.xlarge.search"|"m4.2xlarge.search"|"m4.4xlarge.search"|"m4.10xlarge.search"|"m5.large.search"|"m5.xlarge.search"|"m5.2xlarge.search"|"m5.4xlarge.search"|"m5.12xlarge.search"|"m5.24xlarge.search"|"r5.large.search"|"r5.xlarge.search"|"r5.2xlarge.search"|"r5.4xlarge.search"|"r5.12xlarge.search"|"r5.24xlarge.search"|"c5.large.search"|"c5.xlarge.search"|"c5.2xlarge.search"|"c5.4xlarge.search"|"c5.9xlarge.search"|"c5.18xlarge.search"|"t3.nano.search"|"t3.micro.search"|"t3.small.search"|"t3.medium.search"|"t3.large.search"|"t3.xlarge.search"|"t3.2xlarge.search"|"ultrawarm1.medium.search"|"ultrawarm1.large.search"|"ultrawarm1.xlarge.search"|"t2.micro.search"|"t2.small.search"|"t2.medium.search"|"r3.large.search"|"r3.xlarge.search"|"r3.2xlarge.search"|"r3.4xlarge.search"|"r3.8xlarge.search"|"i2.xlarge.search"|"i2.2xlarge.search"|"d2.xlarge.search"|"d2.2xlarge.search"|"d2.4xlarge.search"|"d2.8xlarge.search"|"c4.large.search"|"c4.xlarge.search"|"c4.2xlarge.search"|"c4.4xlarge.search"|"c4.8xlarge.search"|"r4.large.search"|"r4.xlarge.search"|"r4.2xlarge.search"|"r4.4xlarge.search"|"r4.8xlarge.search"|"r4.16xlarge.search"|"i3.large.search"|"i3.xlarge.search"|"i3.2xlarge.search"|"i3.4xlarge.search"|"i3.8xlarge.search"|"i3.16xlarge.search"|"r6g.large.search"|"r6g.xlarge.search"|"r6g.2xlarge.search"|"r6g.4xlarge.search"|"r6g.8xlarge.search"|"r6g.12xlarge.search"|"m6g.large.search"|"m6g.xlarge.search"|"m6g.2xlarge.search"|"m6g.4xlarge.search"|"m6g.8xlarge.search"|"m6g.12xlarge.search"|"c6g.large.search"|"c6g.xlarge.search"|"c6g.2xlarge.search"|"c6g.4xlarge.search"|"c6g.8xlarge.search"|"c6g.12xlarge.search"|"r6gd.large.search"|"r6gd.xlarge.search"|"r6gd.2xlarge.search"|"r6gd.4xlarge.search"|"r6gd.8xlarge.search"|"r6gd.12xlarge.search"|"r6gd.16xlarge.search"|"t4g.small.search"|"t4g.medium.search",
          DedicatedMasterCount = 123,
          WarmEnabled = TRUE|FALSE,
          WarmType = "ultrawarm1.medium.search"|"ultrawarm1.large.search"|"ultrawarm1.xlarge.search",
          WarmCount = 123,
          ColdStorageOptions = list(
            Enabled = TRUE|FALSE
          ),
          MultiAZWithStandbyEnabled = TRUE|FALSE
        ),
        EBSOptions = list(
          EBSEnabled = TRUE|FALSE,
          VolumeType = "standard"|"gp2"|"io1"|"gp3",
          VolumeSize = 123,
          Iops = 123,
          Throughput = 123
        ),
        AccessPolicies = "string",
        SnapshotOptions = list(
          AutomatedSnapshotStartHour = 123
        ),
        VPCOptions = list(
          VPCId = "string",
          SubnetIds = list(
            "string"
          ),
          AvailabilityZones = list(
            "string"
          ),
          SecurityGroupIds = list(
            "string"
          )
        ),
        CognitoOptions = list(
          Enabled = TRUE|FALSE,
          UserPoolId = "string",
          IdentityPoolId = "string",
          RoleArn = "string"
        ),
        EncryptionAtRestOptions = list(
          Enabled = TRUE|FALSE,
          KmsKeyId = "string"
        ),
        NodeToNodeEncryptionOptions = list(
          Enabled = TRUE|FALSE
        ),
        AdvancedOptions = list(
          "string"
        ),
        LogPublishingOptions = list(
          list(
            CloudWatchLogsLogGroupArn = "string",
            Enabled = TRUE|FALSE
          )
        ),
        ServiceSoftwareOptions = list(
          CurrentVersion = "string",
          NewVersion = "string",
          UpdateAvailable = TRUE|FALSE,
          Cancellable = TRUE|FALSE,
          UpdateStatus = "PENDING_UPDATE"|"IN_PROGRESS"|"COMPLETED"|"NOT_ELIGIBLE"|"ELIGIBLE",
          Description = "string",
          AutomatedUpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          OptionalDeployment = TRUE|FALSE
        ),
        DomainEndpointOptions = list(
          EnforceHTTPS = TRUE|FALSE,
          TLSSecurityPolicy = "Policy-Min-TLS-1-0-2019-07"|"Policy-Min-TLS-1-2-2019-07",
          CustomEndpointEnabled = TRUE|FALSE,
          CustomEndpoint = "string",
          CustomEndpointCertificateArn = "string"
        ),
        AdvancedSecurityOptions = list(
          Enabled = TRUE|FALSE,
          InternalUserDatabaseEnabled = TRUE|FALSE,
          SAMLOptions = list(
            Enabled = TRUE|FALSE,
            Idp = list(
              MetadataContent = "string",
              EntityId = "string"
            ),
            SubjectKey = "string",
            RolesKey = "string",
            SessionTimeoutMinutes = 123
          ),
          AnonymousAuthDisableDate = as.POSIXct(
            "2015-01-01"
          ),
          AnonymousAuthEnabled = TRUE|FALSE
        ),
        AutoTuneOptions = list(
          State = "ENABLED"|"DISABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"DISABLED_AND_ROLLBACK_SCHEDULED"|"DISABLED_AND_ROLLBACK_IN_PROGRESS"|"DISABLED_AND_ROLLBACK_COMPLETE"|"DISABLED_AND_ROLLBACK_ERROR"|"ERROR",
          ErrorMessage = "string",
          UseOffPeakWindow = TRUE|FALSE
        ),
        ChangeProgressDetails = list(
          ChangeId = "string",
          Message = "string"
        ),
        OffPeakWindowOptions = list(
          Enabled = TRUE|FALSE,
          OffPeakWindow = list(
            WindowStartTime = list(
              Hours = 123,
              Minutes = 123
            )
          )
        ),
        SoftwareUpdateOptions = list(
          AutoSoftwareUpdateEnabled = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$delete_domain(
      DomainName = "string"
    )
