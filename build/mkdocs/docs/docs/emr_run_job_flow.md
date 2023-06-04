<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_run_job_flow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## RunJobFlow creates and starts running a new cluster (job flow)

### Description

RunJobFlow creates and starts running a new cluster (job flow). The
cluster runs the steps specified. After the steps complete, the cluster
stops and the HDFS partition is lost. To prevent loss of data, configure
the last step of the job flow to store results in Amazon S3. If the
JobFlowInstancesConfig `KeepJobFlowAliveWhenNoSteps` parameter is set to
`TRUE`, the cluster transitions to the WAITING state rather than
shutting down after the steps have completed.

For additional protection, you can set the JobFlowInstancesConfig
`TerminationProtected` parameter to `TRUE` to lock the cluster and
prevent it from being terminated by API call, user intervention, or in
the event of a job flow error.

A maximum of 256 steps are allowed in each job flow.

If your cluster is long-running (such as a Hive data warehouse) or
complex, you may require more than 256 steps to process your data. You
can bypass the 256-step limitation in various ways, including using the
SSH shell to connect to the master node and submitting queries directly
to the software running on the master node, such as Hive and Hadoop.

For long-running clusters, we recommend that you periodically store your
results.

The instance fleets configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow
request can contain InstanceFleets parameters or InstanceGroups
parameters, but not both.

### Usage

    emr_run_job_flow(Name, LogUri, LogEncryptionKmsKeyId, AdditionalInfo,
      AmiVersion, ReleaseLabel, Instances, Steps, BootstrapActions,
      SupportedProducts, NewSupportedProducts, Applications, Configurations,
      VisibleToAllUsers, JobFlowRole, ServiceRole, Tags,
      SecurityConfiguration, AutoScalingRole, ScaleDownBehavior, CustomAmiId,
      EbsRootVolumeSize, RepoUpgradeOnBoot, KerberosAttributes,
      StepConcurrencyLevel, ManagedScalingPolicy, PlacementGroupConfigs,
      AutoTerminationPolicy, OSReleaseLabel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_run_job_flow_:_Name">Name</code></td>
<td><p>[required] The name of the job flow.</p></td>
</tr>
<tr class="even">
<td><code id="emr_run_job_flow_:_LogUri">LogUri</code></td>
<td><p>The location in Amazon S3 to write the log files of the job flow.
If a value is not provided, logs are not created.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_LogEncryptionKmsKeyId">LogEncryptionKmsKeyId</code></td>
<td><p>The KMS key used for encrypting log files. If a value is not
provided, the logs remain encrypted by AES-256. This attribute is only
available with Amazon EMR releases 5.30.0 and later, excluding Amazon
EMR 6.0.0.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_AdditionalInfo">AdditionalInfo</code></td>
<td><p>A JSON string for selecting additional features.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_run_job_flow_:_AmiVersion">AmiVersion</code></td>
<td><p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon
EMR releases 4.0 and later, <code>ReleaseLabel</code> is used. To
specify a custom AMI, use <code>CustomAmiID</code>.</p></td>
</tr>
<tr class="even">
<td><code id="emr_run_job_flow_:_ReleaseLabel">ReleaseLabel</code></td>
<td><p>The Amazon EMR release label, which determines the version of
open-source application packages installed on the cluster. Release
labels are in the form <code>emr-x.x.x</code>, where x.x.x is an Amazon
EMR release version such as <code
style="white-space: pre;">⁠emr-5.14.0⁠</code>. For more information about
Amazon EMR release versions and included application versions and
features, see <a
href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>.
The release label applies only to Amazon EMR releases version 4.0 and
later. Earlier versions use <code>AmiVersion</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_run_job_flow_:_Instances">Instances</code></td>
<td><p>[required] A specification of the number and type of Amazon EC2
instances.</p></td>
</tr>
<tr class="even">
<td><code id="emr_run_job_flow_:_Steps">Steps</code></td>
<td><p>A list of steps to run.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_BootstrapActions">BootstrapActions</code></td>
<td><p>A list of bootstrap actions to run before Hadoop starts on the
cluster nodes.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_SupportedProducts">SupportedProducts</code></td>
<td><p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x
and later, use Applications.</p>
<p>A list of strings that indicates third-party software to use. For
more information, see the <a
href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-3x.html">Amazon
EMR Developer Guide</a>. Currently supported values are:</p>
<ul>
<li><p>"mapr-m3" - launch the job flow using MapR M3 Edition.</p></li>
<li><p>"mapr-m5" - launch the job flow using MapR M5 Edition.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_NewSupportedProducts">NewSupportedProducts</code></td>
<td><p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x
and later, use Applications.</p>
<p>A list of strings that indicates third-party software to use with the
job flow that accepts a user argument list. Amazon EMR accepts and
forwards the argument list to the corresponding installation script as
bootstrap action arguments. For more information, see "Launch a Job Flow
on the MapR Distribution for Hadoop" in the <a
href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-3x.html">Amazon
EMR Developer Guide</a>. Supported values are:</p>
<ul>
<li><p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p></li>
<li><p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p></li>
<li><p>"mapr" with the user arguments specifying "–edition,m3" or
"–edition,m5" - launch the job flow using MapR M3 or M5 Edition
respectively.</p></li>
<li><p>"mapr-m7" - launch the cluster using MapR M7 Edition.</p></li>
<li><p>"hunk" - launch the cluster with the Hunk Big Data Analytics
Platform.</p></li>
<li><p>"hue"- launch the cluster with Hue installed.</p></li>
<li><p>"spark" - launch the cluster with Apache Spark
installed.</p></li>
<li><p>"ganglia" - launch the cluster with the Ganglia Monitoring System
installed.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="emr_run_job_flow_:_Applications">Applications</code></td>
<td><p>Applies to Amazon EMR releases 4.0 and later. A case-insensitive
list of applications for Amazon EMR to install and configure when
launching the cluster. For a list of applications available for each
Amazon EMR release version, see the <a
href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">Amazon
EMRRelease Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_Configurations">Configurations</code></td>
<td><p>For Amazon EMR releases 4.0 and later. The list of configurations
supplied for the Amazon EMR cluster that you are creating.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_VisibleToAllUsers">VisibleToAllUsers</code></td>
<td><p>The VisibleToAllUsers parameter is no longer supported. By
default, the value is set to <code>true</code>. Setting it to
<code>false</code> now has no effect.</p>
<p>Set this value to <code>true</code> so that IAM principals in the
Amazon Web Services account associated with the cluster can perform
Amazon EMR actions on the cluster that their IAM policies allow. This
value defaults to <code>true</code> for clusters created using the
Amazon EMR API or the CLI <a
href="https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html">create-cluster</a>
command.</p>
<p>When set to <code>false</code>, only the IAM principal that created
the cluster and the Amazon Web Services account root user can perform
Amazon EMR actions for the cluster, regardless of the IAM permissions
policies attached to other IAM principals. For more information, see <a
href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/#security_set_visible_to_all_users">Understanding
the Amazon EMR cluster VisibleToAllUsers setting</a> in the <em>Amazon
EMR Management Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_run_job_flow_:_JobFlowRole">JobFlowRole</code></td>
<td><p>Also called instance profile and Amazon EC2 role. An IAM role for
an Amazon EMR cluster. The Amazon EC2 instances of the cluster assume
this role. The default role is <code>EMR_EC2_DefaultRole</code>. In
order to use the default role, you must have already created it using
the CLI or console.</p></td>
</tr>
<tr class="even">
<td><code id="emr_run_job_flow_:_ServiceRole">ServiceRole</code></td>
<td><p>The IAM role that Amazon EMR assumes in order to access Amazon
Web Services resources on your behalf. If you've created a custom
service role path, you must specify it for the service role when you
launch your cluster.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_run_job_flow_:_Tags">Tags</code></td>
<td><p>A list of tags to associate with a cluster and propagate to
Amazon EC2 instances.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_SecurityConfiguration">SecurityConfiguration</code></td>
<td><p>The name of a security configuration to apply to the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_AutoScalingRole">AutoScalingRole</code></td>
<td><p>An IAM role for automatic scaling policies. The default role is
<code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides
permissions that the automatic scaling feature requires to launch and
terminate Amazon EC2 instances in an instance group.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_ScaleDownBehavior">ScaleDownBehavior</code></td>
<td><p>Specifies the way that individual Amazon EC2 instances terminate
when an automatic scale-in activity occurs or an instance group is
resized. <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon
EMR terminates nodes at the instance-hour boundary, regardless of when
the request to terminate the instance was submitted. This option is only
available with Amazon EMR 5.1.0 and later and is the default for
clusters created using that version.
<code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds
nodes to a deny list and drains tasks from nodes before terminating the
Amazon EC2 instances, regardless of the instance-hour boundary. With
either behavior, Amazon EMR removes the least active nodes first and
blocks instance termination if it could lead to HDFS corruption.
<code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR
releases 4.1.0 and later, and is the default for releases of Amazon EMR
earlier than 5.1.0.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_run_job_flow_:_CustomAmiId">CustomAmiId</code></td>
<td><p>Available only in Amazon EMR releases 5.7.0 and later. The ID of
a custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this
AMI when it launches cluster Amazon EC2 instances. For more information
about custom AMIs in Amazon EMR, see <a
href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html">Using
a Custom AMI</a> in the <em>Amazon EMR Management Guide</em>. If
omitted, the cluster uses the base Linux AMI for the
<code>ReleaseLabel</code> specified. For Amazon EMR releases 2.x and
3.x, use <code>AmiVersion</code> instead.</p>
<p>For information about creating a custom AMI, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating
an Amazon EBS-Backed Linux AMI</a> in the <em>Amazon Elastic Compute
Cloud User Guide for Linux Instances</em>. For information about finding
an AMI ID, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding
a Linux AMI</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_EbsRootVolumeSize">EbsRootVolumeSize</code></td>
<td><p>The size, in GiB, of the Amazon EBS root device volume of the
Linux AMI that is used for each Amazon EC2 instance. Available in Amazon
EMR releases 4.x and later.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_RepoUpgradeOnBoot">RepoUpgradeOnBoot</code></td>
<td><p>Applies only when <code>CustomAmiID</code> is used. Specifies
which updates from the Amazon Linux AMI package repositories to apply
automatically when the instance boots using the AMI. If omitted, the
default is <code>SECURITY</code>, which indicates that only security
updates are applied. If <code>NONE</code> is specified, no updates are
applied, and all updates must be applied manually.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_KerberosAttributes">KerberosAttributes</code></td>
<td><p>Attributes for Kerberos configuration when Kerberos
authentication is enabled using a security configuration. For more
information see <a
href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use
Kerberos Authentication</a> in the <em>Amazon EMR Management
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_StepConcurrencyLevel">StepConcurrencyLevel</code></td>
<td><p>Specifies the number of steps that can be executed concurrently.
The default value is <code>1</code>. The maximum value is
<code>256</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_ManagedScalingPolicy">ManagedScalingPolicy</code></td>
<td><p>The specified managed scaling policy for an Amazon EMR
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_PlacementGroupConfigs">PlacementGroupConfigs</code></td>
<td><p>The specified placement group configuration for an Amazon EMR
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_run_job_flow_:_AutoTerminationPolicy">AutoTerminationPolicy</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="emr_run_job_flow_:_OSReleaseLabel">OSReleaseLabel</code></td>
<td><p>Specifies a particular Amazon Linux release for all nodes in a
cluster launch RunJobFlow request. If a release is not specified, Amazon
EMR uses the latest validated Amazon Linux release for cluster
launch.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobFlowId = "string",
      ClusterArn = "string"
    )

### Request syntax

    svc$run_job_flow(
      Name = "string",
      LogUri = "string",
      LogEncryptionKmsKeyId = "string",
      AdditionalInfo = "string",
      AmiVersion = "string",
      ReleaseLabel = "string",
      Instances = list(
        MasterInstanceType = "string",
        SlaveInstanceType = "string",
        InstanceCount = 123,
        InstanceGroups = list(
          list(
            Name = "string",
            Market = "ON_DEMAND"|"SPOT",
            InstanceRole = "MASTER"|"CORE"|"TASK",
            BidPrice = "string",
            InstanceType = "string",
            InstanceCount = 123,
            Configurations = list(
              list(
                Classification = "string",
                Configurations = list(),
                Properties = list(
                  "string"
                )
              )
            ),
            EbsConfiguration = list(
              EbsBlockDeviceConfigs = list(
                list(
                  VolumeSpecification = list(
                    VolumeType = "string",
                    Iops = 123,
                    SizeInGB = 123,
                    Throughput = 123
                  ),
                  VolumesPerInstance = 123
                )
              ),
              EbsOptimized = TRUE|FALSE
            ),
            AutoScalingPolicy = list(
              Constraints = list(
                MinCapacity = 123,
                MaxCapacity = 123
              ),
              Rules = list(
                list(
                  Name = "string",
                  Description = "string",
                  Action = list(
                    Market = "ON_DEMAND"|"SPOT",
                    SimpleScalingPolicyConfiguration = list(
                      AdjustmentType = "CHANGE_IN_CAPACITY"|"PERCENT_CHANGE_IN_CAPACITY"|"EXACT_CAPACITY",
                      ScalingAdjustment = 123,
                      CoolDown = 123
                    )
                  ),
                  Trigger = list(
                    CloudWatchAlarmDefinition = list(
                      ComparisonOperator = "GREATER_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN"|"LESS_THAN_OR_EQUAL",
                      EvaluationPeriods = 123,
                      MetricName = "string",
                      Namespace = "string",
                      Period = 123,
                      Statistic = "SAMPLE_COUNT"|"AVERAGE"|"SUM"|"MINIMUM"|"MAXIMUM",
                      Threshold = 123.0,
                      Unit = "NONE"|"SECONDS"|"MICRO_SECONDS"|"MILLI_SECONDS"|"BYTES"|"KILO_BYTES"|"MEGA_BYTES"|"GIGA_BYTES"|"TERA_BYTES"|"BITS"|"KILO_BITS"|"MEGA_BITS"|"GIGA_BITS"|"TERA_BITS"|"PERCENT"|"COUNT"|"BYTES_PER_SECOND"|"KILO_BYTES_PER_SECOND"|"MEGA_BYTES_PER_SECOND"|"GIGA_BYTES_PER_SECOND"|"TERA_BYTES_PER_SECOND"|"BITS_PER_SECOND"|"KILO_BITS_PER_SECOND"|"MEGA_BITS_PER_SECOND"|"GIGA_BITS_PER_SECOND"|"TERA_BITS_PER_SECOND"|"COUNT_PER_SECOND",
                      Dimensions = list(
                        list(
                          Key = "string",
                          Value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            CustomAmiId = "string"
          )
        ),
        InstanceFleets = list(
          list(
            Name = "string",
            InstanceFleetType = "MASTER"|"CORE"|"TASK",
            TargetOnDemandCapacity = 123,
            TargetSpotCapacity = 123,
            InstanceTypeConfigs = list(
              list(
                InstanceType = "string",
                WeightedCapacity = 123,
                BidPrice = "string",
                BidPriceAsPercentageOfOnDemandPrice = 123.0,
                EbsConfiguration = list(
                  EbsBlockDeviceConfigs = list(
                    list(
                      VolumeSpecification = list(
                        VolumeType = "string",
                        Iops = 123,
                        SizeInGB = 123,
                        Throughput = 123
                      ),
                      VolumesPerInstance = 123
                    )
                  ),
                  EbsOptimized = TRUE|FALSE
                ),
                Configurations = list(
                  list(
                    Classification = "string",
                    Configurations = list(),
                    Properties = list(
                      "string"
                    )
                  )
                ),
                CustomAmiId = "string"
              )
            ),
            LaunchSpecifications = list(
              SpotSpecification = list(
                TimeoutDurationMinutes = 123,
                TimeoutAction = "SWITCH_TO_ON_DEMAND"|"TERMINATE_CLUSTER",
                BlockDurationMinutes = 123,
                AllocationStrategy = "capacity-optimized"
              ),
              OnDemandSpecification = list(
                AllocationStrategy = "lowest-price",
                CapacityReservationOptions = list(
                  UsageStrategy = "use-capacity-reservations-first",
                  CapacityReservationPreference = "open"|"none",
                  CapacityReservationResourceGroupArn = "string"
                )
              )
            ),
            ResizeSpecifications = list(
              SpotResizeSpecification = list(
                TimeoutDurationMinutes = 123
              ),
              OnDemandResizeSpecification = list(
                TimeoutDurationMinutes = 123
              )
            )
          )
        ),
        Ec2KeyName = "string",
        Placement = list(
          AvailabilityZone = "string",
          AvailabilityZones = list(
            "string"
          )
        ),
        KeepJobFlowAliveWhenNoSteps = TRUE|FALSE,
        TerminationProtected = TRUE|FALSE,
        HadoopVersion = "string",
        Ec2SubnetId = "string",
        Ec2SubnetIds = list(
          "string"
        ),
        EmrManagedMasterSecurityGroup = "string",
        EmrManagedSlaveSecurityGroup = "string",
        ServiceAccessSecurityGroup = "string",
        AdditionalMasterSecurityGroups = list(
          "string"
        ),
        AdditionalSlaveSecurityGroups = list(
          "string"
        )
      ),
      Steps = list(
        list(
          Name = "string",
          ActionOnFailure = "TERMINATE_JOB_FLOW"|"TERMINATE_CLUSTER"|"CANCEL_AND_WAIT"|"CONTINUE",
          HadoopJarStep = list(
            Properties = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            Jar = "string",
            MainClass = "string",
            Args = list(
              "string"
            )
          )
        )
      ),
      BootstrapActions = list(
        list(
          Name = "string",
          ScriptBootstrapAction = list(
            Path = "string",
            Args = list(
              "string"
            )
          )
        )
      ),
      SupportedProducts = list(
        "string"
      ),
      NewSupportedProducts = list(
        list(
          Name = "string",
          Args = list(
            "string"
          )
        )
      ),
      Applications = list(
        list(
          Name = "string",
          Version = "string",
          Args = list(
            "string"
          ),
          AdditionalInfo = list(
            "string"
          )
        )
      ),
      Configurations = list(
        list(
          Classification = "string",
          Configurations = list(),
          Properties = list(
            "string"
          )
        )
      ),
      VisibleToAllUsers = TRUE|FALSE,
      JobFlowRole = "string",
      ServiceRole = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SecurityConfiguration = "string",
      AutoScalingRole = "string",
      ScaleDownBehavior = "TERMINATE_AT_INSTANCE_HOUR"|"TERMINATE_AT_TASK_COMPLETION",
      CustomAmiId = "string",
      EbsRootVolumeSize = 123,
      RepoUpgradeOnBoot = "SECURITY"|"NONE",
      KerberosAttributes = list(
        Realm = "string",
        KdcAdminPassword = "string",
        CrossRealmTrustPrincipalPassword = "string",
        ADDomainJoinUser = "string",
        ADDomainJoinPassword = "string"
      ),
      StepConcurrencyLevel = 123,
      ManagedScalingPolicy = list(
        ComputeLimits = list(
          UnitType = "InstanceFleetUnits"|"Instances"|"VCPU",
          MinimumCapacityUnits = 123,
          MaximumCapacityUnits = 123,
          MaximumOnDemandCapacityUnits = 123,
          MaximumCoreCapacityUnits = 123
        )
      ),
      PlacementGroupConfigs = list(
        list(
          InstanceRole = "MASTER"|"CORE"|"TASK",
          PlacementStrategy = "SPREAD"|"PARTITION"|"CLUSTER"|"NONE"
        )
      ),
      AutoTerminationPolicy = list(
        IdleTimeout = 123
      ),
      OSReleaseLabel = "string"
    )
