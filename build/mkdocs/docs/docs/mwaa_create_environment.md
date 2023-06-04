<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mwaa_create_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Managed Workflows for Apache Airflow (MWAA) environment

### Description

Creates an Amazon Managed Workflows for Apache Airflow (MWAA)
environment.

### Usage

    mwaa_create_environment(AirflowConfigurationOptions, AirflowVersion,
      DagS3Path, EnvironmentClass, ExecutionRoleArn, KmsKey,
      LoggingConfiguration, MaxWorkers, MinWorkers, Name,
      NetworkConfiguration, PluginsS3ObjectVersion, PluginsS3Path,
      RequirementsS3ObjectVersion, RequirementsS3Path, Schedulers,
      SourceBucketArn, StartupScriptS3ObjectVersion, StartupScriptS3Path,
      Tags, WebserverAccessMode, WeeklyMaintenanceWindowStart)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_AirflowConfigurationOptions">AirflowConfigurationOptions</code></td>
<td><p>A list of key-value pairs containing the Apache Airflow
configuration options you want to attach to your environment. For more
information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache
Airflow configuration options</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_AirflowVersion">AirflowVersion</code></td>
<td><p>The Apache Airflow version for your environment. If no value is
specified, it defaults to the latest version. Valid values: <code
style="white-space: pre;">⁠1.10.12⁠</code>, <code
style="white-space: pre;">⁠2.0.2⁠</code>, <code
style="white-space: pre;">⁠2.2.2⁠</code>, and <code
style="white-space: pre;">⁠2.4.3⁠</code>. For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html">Apache
Airflow versions on Amazon Managed Workflows for Apache Airflow
(MWAA)</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="mwaa_create_environment_:_DagS3Path">DagS3Path</code></td>
<td><p>[required] The relative path to the DAGs folder on your Amazon S3
bucket. For example, <code>dags</code>. For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding
or updating DAGs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_EnvironmentClass">EnvironmentClass</code></td>
<td><p>The environment class type. Valid values: <code>mw1.small</code>,
<code>mw1.medium</code>, <code>mw1.large</code>. For more information,
see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon
MWAA environment class</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the execution role
for your environment. An execution role is an Amazon Web Services
Identity and Access Management (IAM) role that grants MWAA permission to
access Amazon Web Services services and resources used by your
environment. For example, <code
style="white-space: pre;">⁠arn:aws:iam::123456789:role/my-execution-role⁠</code>.
For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon
MWAA Execution role</a>.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_create_environment_:_KmsKey">KmsKey</code></td>
<td><p>The Amazon Web Services Key Management Service (KMS) key to
encrypt the data in your environment. You can use an Amazon Web Services
owned CMK, or a Customer managed CMK (advanced). For more information,
see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html">Create
an Amazon MWAA environment</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_LoggingConfiguration">LoggingConfiguration</code></td>
<td><p>Defines the Apache Airflow logs to send to CloudWatch
Logs.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_MaxWorkers">MaxWorkers</code></td>
<td><p>The maximum number of workers that you want to run in your
environment. MWAA scales the number of Apache Airflow workers up to the
number you specify in the <code>MaxWorkers</code> field. For example,
<code>20</code>. When there are no more tasks running, and no more in
the queue, MWAA disposes of the extra workers leaving the one worker
that is included with your environment, or the number you specify in
<code>MinWorkers</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_MinWorkers">MinWorkers</code></td>
<td><p>The minimum number of workers that you want to run in your
environment. MWAA scales the number of Apache Airflow workers up to the
number you specify in the <code>MaxWorkers</code> field. When there are
no more tasks running, and no more in the queue, MWAA disposes of the
extra workers leaving the worker count you specify in the
<code>MinWorkers</code> field. For example, <code>2</code>.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_create_environment_:_Name">Name</code></td>
<td><p>[required] The name of the Amazon MWAA environment. For example,
<code>MyMWAAEnvironment</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_NetworkConfiguration">NetworkConfiguration</code></td>
<td><p>[required] The VPC networking components used to secure and
enable network traffic between the Amazon Web Services resources for
your environment. For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About
networking on Amazon MWAA</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_PluginsS3ObjectVersion">PluginsS3ObjectVersion</code></td>
<td><p>The version of the plugins.zip file on your Amazon S3 bucket. You
must specify a version each time a plugins.zip file is updated. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How
S3 Versioning works</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_PluginsS3Path">PluginsS3Path</code></td>
<td><p>The relative path to the <code>plugins.zip</code> file on your
Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified,
then the <code>plugins.zip</code> version is required. For more
information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing
custom plugins</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_RequirementsS3ObjectVersion">RequirementsS3ObjectVersion</code></td>
<td><p>The version of the <code>requirements.txt</code> file on your
Amazon S3 bucket. You must specify a version each time a
requirements.txt file is updated. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How
S3 Versioning works</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_RequirementsS3Path">RequirementsS3Path</code></td>
<td><p>The relative path to the <code>requirements.txt</code> file on
your Amazon S3 bucket. For example, <code>requirements.txt</code>. If
specified, then a version is required. For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing
Python dependencies</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_Schedulers">Schedulers</code></td>
<td><p>The number of Apache Airflow schedulers to run in your
environment. Valid values:</p>
<ul>
<li><p>v2 - Accepts between 2 to 5. Defaults to 2.</p></li>
<li><p>v1 - Accepts 1.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_SourceBucketArn">SourceBucketArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon S3 bucket
where your DAG code and supporting files are stored. For example,
<code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. For more
information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create
an Amazon S3 bucket for Amazon MWAA</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_StartupScriptS3ObjectVersion">StartupScriptS3ObjectVersion</code></td>
<td><p>The version of the startup shell script in your Amazon S3 bucket.
You must specify the <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version
ID</a> that Amazon S3 assigns to the file every time you update the
script.</p>
<p>Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings
that are no more than 1,024 bytes long. The following is an example:</p>
<p><code
style="white-space: pre;">⁠3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo⁠</code></p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using
a startup script</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_StartupScriptS3Path">StartupScriptS3Path</code></td>
<td><p>The relative path to the startup shell script in your Amazon S3
bucket. For example, <code
style="white-space: pre;">⁠s3://mwaa-environment/startup.sh⁠</code>.</p>
<p>Amazon MWAA runs the script as your environment starts, and before
running the Apache Airflow process. You can use this script to install
dependencies, modify Apache Airflow configuration options, and set
environment variables. For more information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using
a startup script</a>.</p></td>
</tr>
<tr class="even">
<td><code id="mwaa_create_environment_:_Tags">Tags</code></td>
<td><p>The key-value tag pairs you want to associate to your
environment. For example, <code>"Environment": "Staging"</code>. For
more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mwaa_create_environment_:_WebserverAccessMode">WebserverAccessMode</code></td>
<td><p>The Apache Airflow <em>Web server</em> access mode. For more
information, see <a
href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache
Airflow access modes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mwaa_create_environment_:_WeeklyMaintenanceWindowStart">WeeklyMaintenanceWindowStart</code></td>
<td><p>The day and time of the week in Coordinated Universal Time (UTC)
24-hour standard time to start weekly maintenance updates of your
environment in the following format: <code>DAY:HH:MM</code>. For
example: <code>TUE:03:30</code>. You can specify a start time in 30
minute increments only.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_environment(
      AirflowConfigurationOptions = list(
        "string"
      ),
      AirflowVersion = "string",
      DagS3Path = "string",
      EnvironmentClass = "string",
      ExecutionRoleArn = "string",
      KmsKey = "string",
      LoggingConfiguration = list(
        DagProcessingLogs = list(
          Enabled = TRUE|FALSE,
          LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
        ),
        SchedulerLogs = list(
          Enabled = TRUE|FALSE,
          LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
        ),
        TaskLogs = list(
          Enabled = TRUE|FALSE,
          LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
        ),
        WebserverLogs = list(
          Enabled = TRUE|FALSE,
          LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
        ),
        WorkerLogs = list(
          Enabled = TRUE|FALSE,
          LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
        )
      ),
      MaxWorkers = 123,
      MinWorkers = 123,
      Name = "string",
      NetworkConfiguration = list(
        SecurityGroupIds = list(
          "string"
        ),
        SubnetIds = list(
          "string"
        )
      ),
      PluginsS3ObjectVersion = "string",
      PluginsS3Path = "string",
      RequirementsS3ObjectVersion = "string",
      RequirementsS3Path = "string",
      Schedulers = 123,
      SourceBucketArn = "string",
      StartupScriptS3ObjectVersion = "string",
      StartupScriptS3Path = "string",
      Tags = list(
        "string"
      ),
      WebserverAccessMode = "PRIVATE_ONLY"|"PUBLIC_ONLY",
      WeeklyMaintenanceWindowStart = "string"
    )
