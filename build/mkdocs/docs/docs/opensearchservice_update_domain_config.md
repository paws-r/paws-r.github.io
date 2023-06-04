<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_update_domain_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the cluster configuration of the specified Amazon OpenSearch Service domain

### Description

Modifies the cluster configuration of the specified Amazon OpenSearch
Service domain.sl

### Usage

    opensearchservice_update_domain_config(DomainName, ClusterConfig,
      EBSOptions, SnapshotOptions, VPCOptions, CognitoOptions,
      AdvancedOptions, AccessPolicies, LogPublishingOptions,
      EncryptionAtRestOptions, DomainEndpointOptions,
      NodeToNodeEncryptionOptions, AdvancedSecurityOptions, AutoTuneOptions,
      DryRun, DryRunMode, OffPeakWindowOptions, SoftwareUpdateOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_ClusterConfig">ClusterConfig</code></td>
<td><p>Changes that you want to make to the cluster configuration, such
as the instance type and number of EC2 instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_EBSOptions">EBSOptions</code></td>
<td><p>The type and size of the EBS volume to attach to instances in the
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_SnapshotOptions">SnapshotOptions</code></td>
<td><p>Option to set the time, in UTC format, for the daily automated
snapshot. Default value is <code>0</code> hours.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_VPCOptions">VPCOptions</code></td>
<td><p>Options to specify the subnets and security groups for a VPC
endpoint. For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching
your Amazon OpenSearch Service domains using a VPC</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_CognitoOptions">CognitoOptions</code></td>
<td><p>Key-value pairs to configure Amazon Cognito authentication for
OpenSearch Dashboards.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_AdvancedOptions">AdvancedOptions</code></td>
<td><p>Key-value pairs to specify advanced configuration options. The
following key-value pairs are supported:</p>
<ul>
<li><p><code>"rest.action.multi.allow_explicit_index": "true" | "false"</code>
- Note the use of a string rather than a boolean. Specifies whether
explicit references to indexes are allowed inside the body of HTTP
requests. If you want to configure access policies for domain
sub-resources, such as specific indexes and domain APIs, you must
disable this property. Default is true.</p></li>
<li><p><code>"indices.fielddata.cache.size": "80" </code> - Note the use
of a string rather than a boolean. Specifies the percentage of heap
space allocated to field data. Default is unbounded.</p></li>
<li><p><code>"indices.query.bool.max_clause_count": "1024"</code> - Note
the use of a string rather than a boolean. Specifies the maximum number
of clauses allowed in a Lucene boolean query. Default is 1,024. Queries
with more than the permitted number of clauses result in a
<code>TooManyClauses</code> error.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced
cluster parameters</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_AccessPolicies">AccessPolicies</code></td>
<td><p>Identity and Access Management (IAM) access policy as a
JSON-formatted string.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_LogPublishingOptions">LogPublishingOptions</code></td>
<td><p>Options to publish OpenSearch logs to Amazon CloudWatch
Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_EncryptionAtRestOptions">EncryptionAtRestOptions</code></td>
<td><p>Encryption at rest options for the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_DomainEndpointOptions">DomainEndpointOptions</code></td>
<td><p>Additional options for the domain endpoint, such as whether to
require HTTPS for all traffic.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_NodeToNodeEncryptionOptions">NodeToNodeEncryptionOptions</code></td>
<td><p>Node-to-node encryption options for the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_AdvancedSecurityOptions">AdvancedSecurityOptions</code></td>
<td><p>Options for fine-grained access control.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_AutoTuneOptions">AutoTuneOptions</code></td>
<td><p>Options for Auto-Tune.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_DryRun">DryRun</code></td>
<td><p>This flag, when set to True, specifies whether the
<code>UpdateDomain</code> request should return the results of a dry run
analysis without actually applying the change. A dry run determines what
type of deployment the update will cause.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_DryRunMode">DryRunMode</code></td>
<td><p>The type of dry run to perform.</p>
<ul>
<li><p><code>Basic</code> only returns the type of deployment
(blue/green or dynamic) that the update will cause.</p></li>
<li><p><code>Verbose</code> runs an additional check to validate the
changes you're making. For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html#validation-check">Validating
a domain update</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_update_domain_config_:_OffPeakWindowOptions">OffPeakWindowOptions</code></td>
<td><p>Off-peak window options for the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_update_domain_config_:_SoftwareUpdateOptions">SoftwareUpdateOptions</code></td>
<td><p>Service software update options for the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainConfig = list(
        EngineVersion = list(
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
        ClusterConfig = list(
          Options = list(
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
            ),
            UseOffPeakWindow = TRUE|FALSE
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
        ),
        OffPeakWindowOptions = list(
          Options = list(
            Enabled = TRUE|FALSE,
            OffPeakWindow = list(
              WindowStartTime = list(
                Hours = 123,
                Minutes = 123
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
            State = "RequiresIndexDocuments"|"Processing"|"Active",
            PendingDeletion = TRUE|FALSE
          )
        ),
        SoftwareUpdateOptions = list(
          Options = list(
            AutoSoftwareUpdateEnabled = TRUE|FALSE
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
        )
      ),
      DryRunResults = list(
        DeploymentType = "string",
        Message = "string"
      ),
      DryRunProgressStatus = list(
        DryRunId = "string",
        DryRunStatus = "string",
        CreationDate = "string",
        UpdateDate = "string",
        ValidationFailures = list(
          list(
            Code = "string",
            Message = "string"
          )
        )
      )
    )

### Request syntax

    svc$update_domain_config(
      DomainName = "string",
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
      EncryptionAtRestOptions = list(
        Enabled = TRUE|FALSE,
        KmsKeyId = "string"
      ),
      DomainEndpointOptions = list(
        EnforceHTTPS = TRUE|FALSE,
        TLSSecurityPolicy = "Policy-Min-TLS-1-0-2019-07"|"Policy-Min-TLS-1-2-2019-07",
        CustomEndpointEnabled = TRUE|FALSE,
        CustomEndpoint = "string",
        CustomEndpointCertificateArn = "string"
      ),
      NodeToNodeEncryptionOptions = list(
        Enabled = TRUE|FALSE
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
        ),
        UseOffPeakWindow = TRUE|FALSE
      ),
      DryRun = TRUE|FALSE,
      DryRunMode = "Basic"|"Verbose",
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
