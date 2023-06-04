<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_update_elasticsearch_domain_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances

### Description

Modifies the cluster configuration of the specified Elasticsearch
domain, setting as setting the instance type and the number of
instances.

### Usage

    elasticsearchservice_update_elasticsearch_domain_config(DomainName,
      ElasticsearchClusterConfig, EBSOptions, SnapshotOptions, VPCOptions,
      CognitoOptions, AdvancedOptions, AccessPolicies, LogPublishingOptions,
      DomainEndpointOptions, AdvancedSecurityOptions,
      NodeToNodeEncryptionOptions, EncryptionAtRestOptions, AutoTuneOptions,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the Elasticsearch domain that you are
updating.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_ElasticsearchClusterConfig">ElasticsearchClusterConfig</code></td>
<td><p>The type and number of instances to instantiate for the domain
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_EBSOptions">EBSOptions</code></td>
<td><p>Specify the type and size of the EBS volume that you want to
use.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_SnapshotOptions">SnapshotOptions</code></td>
<td><p>Option to set the time, in UTC format, for the daily automated
snapshot. Default value is <code>0</code> hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_VPCOptions">VPCOptions</code></td>
<td><p>Options to specify the subnets and security groups for VPC
endpoint. For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html#es-creating-vpc"
target="_blank">Creating a VPC</a> in <em>VPC Endpoints for Amazon
Elasticsearch Service Domains</em></p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_CognitoOptions">CognitoOptions</code></td>
<td><p>Options to specify the Cognito user and identity pools for Kibana
authentication. For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html"
target="_blank">Amazon Cognito Authentication for Kibana</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_AdvancedOptions">AdvancedOptions</code></td>
<td><p>Modifies the advanced option to allow references to indices in an
HTTP request body. Must be <code>false</code> when configuring access to
individual sub-resources. By default, the value is <code>true</code>.
See <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#es-createdomain-configure-advanced-options"
target="_blank">Configuration Advanced Options</a> for more
information.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_AccessPolicies">AccessPolicies</code></td>
<td><p>IAM access policy as a JSON-formatted string.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_LogPublishingOptions">LogPublishingOptions</code></td>
<td><p>Map of <code>LogType</code> and <code>LogPublishingOption</code>,
each containing options to publish a given type of Elasticsearch
log.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_DomainEndpointOptions">DomainEndpointOptions</code></td>
<td><p>Options to specify configuration that will be applied to the
domain endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_AdvancedSecurityOptions">AdvancedSecurityOptions</code></td>
<td><p>Specifies advanced security options.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_NodeToNodeEncryptionOptions">NodeToNodeEncryptionOptions</code></td>
<td><p>Specifies the NodeToNodeEncryptionOptions.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_EncryptionAtRestOptions">EncryptionAtRestOptions</code></td>
<td><p>Specifies the Encryption At Rest Options.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_AutoTuneOptions">AutoTuneOptions</code></td>
<td><p>Specifies Auto-Tune options.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_update_elasticsearch_domain_config_:_DryRun">DryRun</code></td>
<td><p>This flag, when set to True, specifies whether the
<code>UpdateElasticsearchDomain</code> request should return the results
of validation checks without actually applying the change. This flag,
when set to True, specifies the deployment mechanism through which the
update shall be applied on the domain. This will not actually perform
the Update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainConfig = list(
        ElasticsearchVersion = list(
          Options = "string",
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        ElasticsearchClusterConfig = list(
          Options = list(
            InstanceType = "m3.medium.elasticsearch"|"m3.large.elasticsearch"|"m3.xlarge.elasticsearch"|"m3.2xlarge.elasticsearch"|"m4.large.elasticsearch"|"m4.xlarge.elasticsearch"|"m4.2xlarge.elasticsearch"|"m4.4xlarge.elasticsearch"|"m4.10xlarge.elasticsearch"|"m5.large.elasticsearch"|"m5.xlarge.elasticsearch"|"m5.2xlarge.elasticsearch"|"m5.4xlarge.elasticsearch"|"m5.12xlarge.elasticsearch"|"r5.large.elasticsearch"|"r5.xlarge.elasticsearch"|"r5.2xlarge.elasticsearch"|"r5.4xlarge.elasticsearch"|"r5.12xlarge.elasticsearch"|"c5.large.elasticsearch"|"c5.xlarge.elasticsearch"|"c5.2xlarge.elasticsearch"|"c5.4xlarge.elasticsearch"|"c5.9xlarge.elasticsearch"|"c5.18xlarge.elasticsearch"|"ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch"|"t2.micro.elasticsearch"|"t2.small.elasticsearch"|"t2.medium.elasticsearch"|"r3.large.elasticsearch"|"r3.xlarge.elasticsearch"|"r3.2xlarge.elasticsearch"|"r3.4xlarge.elasticsearch"|"r3.8xlarge.elasticsearch"|"i2.xlarge.elasticsearch"|"i2.2xlarge.elasticsearch"|"d2.xlarge.elasticsearch"|"d2.2xlarge.elasticsearch"|"d2.4xlarge.elasticsearch"|"d2.8xlarge.elasticsearch"|"c4.large.elasticsearch"|"c4.xlarge.elasticsearch"|"c4.2xlarge.elasticsearch"|"c4.4xlarge.elasticsearch"|"c4.8xlarge.elasticsearch"|"r4.large.elasticsearch"|"r4.xlarge.elasticsearch"|"r4.2xlarge.elasticsearch"|"r4.4xlarge.elasticsearch"|"r4.8xlarge.elasticsearch"|"r4.16xlarge.elasticsearch"|"i3.large.elasticsearch"|"i3.xlarge.elasticsearch"|"i3.2xlarge.elasticsearch"|"i3.4xlarge.elasticsearch"|"i3.8xlarge.elasticsearch"|"i3.16xlarge.elasticsearch",
            InstanceCount = 123,
            DedicatedMasterEnabled = TRUE|FALSE,
            ZoneAwarenessEnabled = TRUE|FALSE,
            ZoneAwarenessConfig = list(
              AvailabilityZoneCount = 123
            ),
            DedicatedMasterType = "m3.medium.elasticsearch"|"m3.large.elasticsearch"|"m3.xlarge.elasticsearch"|"m3.2xlarge.elasticsearch"|"m4.large.elasticsearch"|"m4.xlarge.elasticsearch"|"m4.2xlarge.elasticsearch"|"m4.4xlarge.elasticsearch"|"m4.10xlarge.elasticsearch"|"m5.large.elasticsearch"|"m5.xlarge.elasticsearch"|"m5.2xlarge.elasticsearch"|"m5.4xlarge.elasticsearch"|"m5.12xlarge.elasticsearch"|"r5.large.elasticsearch"|"r5.xlarge.elasticsearch"|"r5.2xlarge.elasticsearch"|"r5.4xlarge.elasticsearch"|"r5.12xlarge.elasticsearch"|"c5.large.elasticsearch"|"c5.xlarge.elasticsearch"|"c5.2xlarge.elasticsearch"|"c5.4xlarge.elasticsearch"|"c5.9xlarge.elasticsearch"|"c5.18xlarge.elasticsearch"|"ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch"|"t2.micro.elasticsearch"|"t2.small.elasticsearch"|"t2.medium.elasticsearch"|"r3.large.elasticsearch"|"r3.xlarge.elasticsearch"|"r3.2xlarge.elasticsearch"|"r3.4xlarge.elasticsearch"|"r3.8xlarge.elasticsearch"|"i2.xlarge.elasticsearch"|"i2.2xlarge.elasticsearch"|"d2.xlarge.elasticsearch"|"d2.2xlarge.elasticsearch"|"d2.4xlarge.elasticsearch"|"d2.8xlarge.elasticsearch"|"c4.large.elasticsearch"|"c4.xlarge.elasticsearch"|"c4.2xlarge.elasticsearch"|"c4.4xlarge.elasticsearch"|"c4.8xlarge.elasticsearch"|"r4.large.elasticsearch"|"r4.xlarge.elasticsearch"|"r4.2xlarge.elasticsearch"|"r4.4xlarge.elasticsearch"|"r4.8xlarge.elasticsearch"|"r4.16xlarge.elasticsearch"|"i3.large.elasticsearch"|"i3.xlarge.elasticsearch"|"i3.2xlarge.elasticsearch"|"i3.4xlarge.elasticsearch"|"i3.8xlarge.elasticsearch"|"i3.16xlarge.elasticsearch",
            DedicatedMasterCount = 123,
            WarmEnabled = TRUE|FALSE,
            WarmType = "ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch",
            WarmCount = 123,
            ColdStorageOptions = list(
              Enabled = TRUE|FALSE
            )
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        EBSOptions = list(
          Options = list(
            EBSEnabled = TRUE|FALSE,
            VolumeType = "standard"|"gp2"|"io1"|"gp3",
            VolumeSize = 123,
            Iops = 123,
            Throughput = 123
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        AccessPolicies = list(
          Options = "string",
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        SnapshotOptions = list(
          Options = list(
            AutomatedSnapshotStartHour = 123
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        VPCOptions = list(
          Options = list(
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
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        CognitoOptions = list(
          Options = list(
            Enabled = TRUE|FALSE,
            UserPoolId = "string",
            IdentityPoolId = "string",
            RoleArn = "string"
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        EncryptionAtRestOptions = list(
          Options = list(
            Enabled = TRUE|FALSE,
            KmsKeyId = "string"
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        NodeToNodeEncryptionOptions = list(
          Options = list(
            Enabled = TRUE|FALSE
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        AdvancedOptions = list(
          Options = list(
            "string"
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        LogPublishingOptions = list(
          Options = list(
            list(
              CloudWatchLogsLogGroupArn = "string",
              Enabled = TRUE|FALSE
            )
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        DomainEndpointOptions = list(
          Options = list(
            EnforceHTTPS = TRUE|FALSE,
            TLSSecurityPolicy = "Policy-Min-TLS-1-0-2019-07"|"Policy-Min-TLS-1-2-2019-07",
            CustomEndpointEnabled = TRUE|FALSE,
            CustomEndpoint = "string",
            CustomEndpointCertificateArn = "string"
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        AdvancedSecurityOptions = list(
          Options = list(
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
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        AutoTuneOptions = list(
          Options = list(
            DesiredState = "ENABLED"|"DISABLED",
            RollbackOnDisable = "NO_ROLLBACK"|"DEFAULT_ROLLBACK",
            MaintenanceSchedules = list(
              list(
                StartAt = as.POSIXct(
                  "2015-01-01"
                ),
                Duration = list(
                  Value = 123,
                  Unit = "HOURS"
                ),
                CronExpressionForRecurrence = "string"
              )
            )
          ),
          Status = list(
            CreationDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateDate = as.POSIXct(
              "2015-01-01"
            ),
            UpdateVersion = 123,
            State = "ENABLED"|"DISABLED"|"ENABLE_IN_PROGRESS"|"DISABLE_IN_PROGRESS"|"DISABLED_AND_ROLLBACK_SCHEDULED"|"DISABLED_AND_ROLLBACK_IN_PROGRESS"|"DISABLED_AND_ROLLBACK_COMPLETE"|"DISABLED_AND_ROLLBACK_ERROR"|"ERROR",
            ErrorMessage = "string",
            PendingDeletion = TRUE|FALSE
          )
        ),
        ChangeProgressDetails = list(
          ChangeId = "string",
          Message = "string"
        )
      ),
      DryRunResults = list(
        DeploymentType = "string",
        Message = "string"
      )
    )

### Request syntax

    svc$update_elasticsearch_domain_config(
      DomainName = "string",
      ElasticsearchClusterConfig = list(
        InstanceType = "m3.medium.elasticsearch"|"m3.large.elasticsearch"|"m3.xlarge.elasticsearch"|"m3.2xlarge.elasticsearch"|"m4.large.elasticsearch"|"m4.xlarge.elasticsearch"|"m4.2xlarge.elasticsearch"|"m4.4xlarge.elasticsearch"|"m4.10xlarge.elasticsearch"|"m5.large.elasticsearch"|"m5.xlarge.elasticsearch"|"m5.2xlarge.elasticsearch"|"m5.4xlarge.elasticsearch"|"m5.12xlarge.elasticsearch"|"r5.large.elasticsearch"|"r5.xlarge.elasticsearch"|"r5.2xlarge.elasticsearch"|"r5.4xlarge.elasticsearch"|"r5.12xlarge.elasticsearch"|"c5.large.elasticsearch"|"c5.xlarge.elasticsearch"|"c5.2xlarge.elasticsearch"|"c5.4xlarge.elasticsearch"|"c5.9xlarge.elasticsearch"|"c5.18xlarge.elasticsearch"|"ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch"|"t2.micro.elasticsearch"|"t2.small.elasticsearch"|"t2.medium.elasticsearch"|"r3.large.elasticsearch"|"r3.xlarge.elasticsearch"|"r3.2xlarge.elasticsearch"|"r3.4xlarge.elasticsearch"|"r3.8xlarge.elasticsearch"|"i2.xlarge.elasticsearch"|"i2.2xlarge.elasticsearch"|"d2.xlarge.elasticsearch"|"d2.2xlarge.elasticsearch"|"d2.4xlarge.elasticsearch"|"d2.8xlarge.elasticsearch"|"c4.large.elasticsearch"|"c4.xlarge.elasticsearch"|"c4.2xlarge.elasticsearch"|"c4.4xlarge.elasticsearch"|"c4.8xlarge.elasticsearch"|"r4.large.elasticsearch"|"r4.xlarge.elasticsearch"|"r4.2xlarge.elasticsearch"|"r4.4xlarge.elasticsearch"|"r4.8xlarge.elasticsearch"|"r4.16xlarge.elasticsearch"|"i3.large.elasticsearch"|"i3.xlarge.elasticsearch"|"i3.2xlarge.elasticsearch"|"i3.4xlarge.elasticsearch"|"i3.8xlarge.elasticsearch"|"i3.16xlarge.elasticsearch",
        InstanceCount = 123,
        DedicatedMasterEnabled = TRUE|FALSE,
        ZoneAwarenessEnabled = TRUE|FALSE,
        ZoneAwarenessConfig = list(
          AvailabilityZoneCount = 123
        ),
        DedicatedMasterType = "m3.medium.elasticsearch"|"m3.large.elasticsearch"|"m3.xlarge.elasticsearch"|"m3.2xlarge.elasticsearch"|"m4.large.elasticsearch"|"m4.xlarge.elasticsearch"|"m4.2xlarge.elasticsearch"|"m4.4xlarge.elasticsearch"|"m4.10xlarge.elasticsearch"|"m5.large.elasticsearch"|"m5.xlarge.elasticsearch"|"m5.2xlarge.elasticsearch"|"m5.4xlarge.elasticsearch"|"m5.12xlarge.elasticsearch"|"r5.large.elasticsearch"|"r5.xlarge.elasticsearch"|"r5.2xlarge.elasticsearch"|"r5.4xlarge.elasticsearch"|"r5.12xlarge.elasticsearch"|"c5.large.elasticsearch"|"c5.xlarge.elasticsearch"|"c5.2xlarge.elasticsearch"|"c5.4xlarge.elasticsearch"|"c5.9xlarge.elasticsearch"|"c5.18xlarge.elasticsearch"|"ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch"|"t2.micro.elasticsearch"|"t2.small.elasticsearch"|"t2.medium.elasticsearch"|"r3.large.elasticsearch"|"r3.xlarge.elasticsearch"|"r3.2xlarge.elasticsearch"|"r3.4xlarge.elasticsearch"|"r3.8xlarge.elasticsearch"|"i2.xlarge.elasticsearch"|"i2.2xlarge.elasticsearch"|"d2.xlarge.elasticsearch"|"d2.2xlarge.elasticsearch"|"d2.4xlarge.elasticsearch"|"d2.8xlarge.elasticsearch"|"c4.large.elasticsearch"|"c4.xlarge.elasticsearch"|"c4.2xlarge.elasticsearch"|"c4.4xlarge.elasticsearch"|"c4.8xlarge.elasticsearch"|"r4.large.elasticsearch"|"r4.xlarge.elasticsearch"|"r4.2xlarge.elasticsearch"|"r4.4xlarge.elasticsearch"|"r4.8xlarge.elasticsearch"|"r4.16xlarge.elasticsearch"|"i3.large.elasticsearch"|"i3.xlarge.elasticsearch"|"i3.2xlarge.elasticsearch"|"i3.4xlarge.elasticsearch"|"i3.8xlarge.elasticsearch"|"i3.16xlarge.elasticsearch",
        DedicatedMasterCount = 123,
        WarmEnabled = TRUE|FALSE,
        WarmType = "ultrawarm1.medium.elasticsearch"|"ultrawarm1.large.elasticsearch",
        WarmCount = 123,
        ColdStorageOptions = list(
          Enabled = TRUE|FALSE
        )
      ),
      EBSOptions = list(
        EBSEnabled = TRUE|FALSE,
        VolumeType = "standard"|"gp2"|"io1"|"gp3",
        VolumeSize = 123,
        Iops = 123,
        Throughput = 123
      ),
      SnapshotOptions = list(
        AutomatedSnapshotStartHour = 123
      ),
      VPCOptions = list(
        SubnetIds = list(
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
      AdvancedOptions = list(
        "string"
      ),
      AccessPolicies = "string",
      LogPublishingOptions = list(
        list(
          CloudWatchLogsLogGroupArn = "string",
          Enabled = TRUE|FALSE
        )
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
        MasterUserOptions = list(
          MasterUserARN = "string",
          MasterUserName = "string",
          MasterUserPassword = "string"
        ),
        SAMLOptions = list(
          Enabled = TRUE|FALSE,
          Idp = list(
            MetadataContent = "string",
            EntityId = "string"
          ),
          MasterUserName = "string",
          MasterBackendRole = "string",
          SubjectKey = "string",
          RolesKey = "string",
          SessionTimeoutMinutes = 123
        ),
        AnonymousAuthEnabled = TRUE|FALSE
      ),
      NodeToNodeEncryptionOptions = list(
        Enabled = TRUE|FALSE
      ),
      EncryptionAtRestOptions = list(
        Enabled = TRUE|FALSE,
        KmsKeyId = "string"
      ),
      AutoTuneOptions = list(
        DesiredState = "ENABLED"|"DISABLED",
        RollbackOnDisable = "NO_ROLLBACK"|"DEFAULT_ROLLBACK",
        MaintenanceSchedules = list(
          list(
            StartAt = as.POSIXct(
              "2015-01-01"
            ),
            Duration = list(
              Value = 123,
              Unit = "HOURS"
            ),
            CronExpressionForRecurrence = "string"
          )
        )
      ),
      DryRun = TRUE|FALSE
    )
