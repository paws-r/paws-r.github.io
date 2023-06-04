<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_create_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon OpenSearch Service domain

### Description

Creates an Amazon OpenSearch Service domain. For more information, see
[Creating and managing Amazon OpenSearch Service
domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html).

### Usage

    opensearchservice_create_domain(DomainName, EngineVersion,
      ClusterConfig, EBSOptions, AccessPolicies, SnapshotOptions, VPCOptions,
      CognitoOptions, EncryptionAtRestOptions, NodeToNodeEncryptionOptions,
      AdvancedOptions, LogPublishingOptions, DomainEndpointOptions,
      AdvancedSecurityOptions, TagList, AutoTuneOptions, OffPeakWindowOptions,
      SoftwareUpdateOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the OpenSearch Service domain to create.
Domain names are unique across the domains owned by an account within an
Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_EngineVersion">EngineVersion</code></td>
<td><p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify
the engine version for the OpenSearch Service domain. For example,
<code>OpenSearch_1.0</code> or <code>Elasticsearch_7.9</code>. For more
information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains">Creating
and managing Amazon OpenSearch Service domains</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_ClusterConfig">ClusterConfig</code></td>
<td><p>Container for the cluster configuration of a domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_EBSOptions">EBSOptions</code></td>
<td><p>Container for the parameters required to enable EBS-based storage
for an OpenSearch Service domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_AccessPolicies">AccessPolicies</code></td>
<td><p>Identity and Access Management (IAM) policy document specifying
the access policies for the new domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_SnapshotOptions">SnapshotOptions</code></td>
<td><p>DEPRECATED. Container for the parameters required to configure
automated snapshots of domain indexes.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_VPCOptions">VPCOptions</code></td>
<td><p>Container for the values required to configure VPC access
domains. If you don't specify these values, OpenSearch Service creates
the domain with a public endpoint. For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html">Launching
your Amazon OpenSearch Service domains using a VPC</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_CognitoOptions">CognitoOptions</code></td>
<td><p>Key-value pairs to configure Amazon Cognito authentication. For
more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html">Configuring
Amazon Cognito authentication for OpenSearch Dashboards</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_EncryptionAtRestOptions">EncryptionAtRestOptions</code></td>
<td><p>Key-value pairs to enable encryption at rest.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_NodeToNodeEncryptionOptions">NodeToNodeEncryptionOptions</code></td>
<td><p>Enables node-to-node encryption.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_AdvancedOptions">AdvancedOptions</code></td>
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
<li><p><code>"override_main_response_version": "true" | "false"</code> -
Note the use of a string rather than a boolean. Specifies whether the
domain reports its version as 7.10 to allow Elasticsearch OSS clients
and plugins to continue working with it. Default is false when creating
a domain and true when upgrading a domain.</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options">Advanced
cluster parameters</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_LogPublishingOptions">LogPublishingOptions</code></td>
<td><p>Key-value pairs to configure log publishing.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_DomainEndpointOptions">DomainEndpointOptions</code></td>
<td><p>Additional options for the domain endpoint, such as whether to
require HTTPS for all traffic.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_AdvancedSecurityOptions">AdvancedSecurityOptions</code></td>
<td><p>Options for fine-grained access control.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_TagList">TagList</code></td>
<td><p>List of tags to add to the domain upon creation.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_AutoTuneOptions">AutoTuneOptions</code></td>
<td><p>Options for Auto-Tune.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_domain_:_OffPeakWindowOptions">OffPeakWindowOptions</code></td>
<td><p>Specifies a daily 10-hour time block during which OpenSearch
Service can perform configuration changes on the domain, including
service software updates and Auto-Tune enhancements that require a
blue/green deployment. If no options are specified, the default start
time of 10:00 P.M. local time (for the Region that the domain is created
in) is used.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_domain_:_SoftwareUpdateOptions">SoftwareUpdateOptions</code></td>
<td><p>Software update options for the domain.</p></td>
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

    svc$create_domain(
      DomainName = "string",
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
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AutoTuneOptions = list(
        DesiredState = "ENABLED"|"DISABLED",
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
