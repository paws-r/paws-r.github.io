<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_update_layer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified layer

### Description

Updates a specified layer.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_update_layer(LayerId, Name, Shortname, Attributes,
      CloudWatchLogsConfiguration, CustomInstanceProfileArn, CustomJson,
      CustomSecurityGroupIds, Packages, VolumeConfigurations,
      EnableAutoHealing, AutoAssignElasticIps, AutoAssignPublicIps,
      CustomRecipes, InstallUpdatesOnBoot, UseEbsOptimizedInstances,
      LifecycleEventConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_update_layer_:_LayerId">LayerId</code></td>
<td><p>[required] The layer ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_update_layer_:_Name">Name</code></td>
<td><p>The layer name, which is used by the console.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_update_layer_:_Shortname">Shortname</code></td>
<td><p>For custom layers only, use this parameter to specify the layer's
short name, which is used internally by AWS OpsWorks Stacks and by Chef.
The short name is also used as the name for the directory where your app
files are installed. It can have a maximum of 200 characters and must be
in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p>
<p>The built-in layers' short names are defined by AWS OpsWorks Stacks.
For more information, see the <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer
Reference</a></p></td>
</tr>
<tr class="even">
<td><code id="opsworks_update_layer_:_Attributes">Attributes</code></td>
<td><p>One or more user-defined key/value pairs to be added to the stack
attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_layer_:_CloudWatchLogsConfiguration">CloudWatchLogsConfiguration</code></td>
<td><p>Specifies CloudWatch Logs configuration options for the layer.
For more information, see CloudWatchLogsLogStream.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_layer_:_CustomInstanceProfileArn">CustomInstanceProfileArn</code></td>
<td><p>The ARN of an IAM profile to be used for all of the layer's EC2
instances. For more information about IAM ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_update_layer_:_CustomJson">CustomJson</code></td>
<td><p>A JSON-formatted string containing custom stack configuration and
deployment attributes to be installed on the layer's instances. For more
information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">Using
Custom JSON</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_layer_:_CustomSecurityGroupIds">CustomSecurityGroupIds</code></td>
<td><p>An array containing the layer's custom security group
IDs.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_update_layer_:_Packages">Packages</code></td>
<td><p>An array of <code>Package</code> objects that describe the
layer's packages.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_layer_:_VolumeConfigurations">VolumeConfigurations</code></td>
<td><p>A <code>VolumeConfigurations</code> object that describes the
layer's Amazon EBS volumes.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_layer_:_EnableAutoHealing">EnableAutoHealing</code></td>
<td><p>Whether to disable auto healing for the layer.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_layer_:_AutoAssignElasticIps">AutoAssignElasticIps</code></td>
<td><p>Whether to automatically assign an <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic
IP address</a> to the layer's instances. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How
to Edit a Layer</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_layer_:_AutoAssignPublicIps">AutoAssignPublicIps</code></td>
<td><p>For stacks that are running in a VPC, whether to automatically
assign a public IP address to the layer's instances. For more
information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How
to Edit a Layer</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_layer_:_CustomRecipes">CustomRecipes</code></td>
<td><p>A <code>LayerCustomRecipes</code> object that specifies the
layer's custom recipes.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_layer_:_InstallUpdatesOnBoot">InstallUpdatesOnBoot</code></td>
<td><p>Whether to install operating system and package updates when the
instance boots. The default value is <code>true</code>. To control when
updates are installed, set this value to <code>false</code>. You must
then update your instances manually by using
<code>create_deployment</code> to run the
<code>update_dependencies</code> stack command or manually running
<code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
instances.</p>
<p>We strongly recommend using the default value of <code>true</code>,
to ensure that your instances have the latest security updates.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_layer_:_UseEbsOptimizedInstances">UseEbsOptimizedInstances</code></td>
<td><p>Whether to use Amazon EBS-optimized instances.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_layer_:_LifecycleEventConfiguration">LifecycleEventConfiguration</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_layer(
      LayerId = "string",
      Name = "string",
      Shortname = "string",
      Attributes = list(
        "string"
      ),
      CloudWatchLogsConfiguration = list(
        Enabled = TRUE|FALSE,
        LogStreams = list(
          list(
            LogGroupName = "string",
            DatetimeFormat = "string",
            TimeZone = "LOCAL"|"UTC",
            File = "string",
            FileFingerprintLines = "string",
            MultiLineStartPattern = "string",
            InitialPosition = "start_of_file"|"end_of_file",
            Encoding = "ascii"|"big5"|"big5hkscs"|"cp037"|"cp424"|"cp437"|"cp500"|"cp720"|"cp737"|"cp775"|"cp850"|"cp852"|"cp855"|"cp856"|"cp857"|"cp858"|"cp860"|"cp861"|"cp862"|"cp863"|"cp864"|"cp865"|"cp866"|"cp869"|"cp874"|"cp875"|"cp932"|"cp949"|"cp950"|"cp1006"|"cp1026"|"cp1140"|"cp1250"|"cp1251"|"cp1252"|"cp1253"|"cp1254"|"cp1255"|"cp1256"|"cp1257"|"cp1258"|"euc_jp"|"euc_jis_2004"|"euc_jisx0213"|"euc_kr"|"gb2312"|"gbk"|"gb18030"|"hz"|"iso2022_jp"|"iso2022_jp_1"|"iso2022_jp_2"|"iso2022_jp_2004"|"iso2022_jp_3"|"iso2022_jp_ext"|"iso2022_kr"|"latin_1"|"iso8859_2"|"iso8859_3"|"iso8859_4"|"iso8859_5"|"iso8859_6"|"iso8859_7"|"iso8859_8"|"iso8859_9"|"iso8859_10"|"iso8859_13"|"iso8859_14"|"iso8859_15"|"iso8859_16"|"johab"|"koi8_r"|"koi8_u"|"mac_cyrillic"|"mac_greek"|"mac_iceland"|"mac_latin2"|"mac_roman"|"mac_turkish"|"ptcp154"|"shift_jis"|"shift_jis_2004"|"shift_jisx0213"|"utf_32"|"utf_32_be"|"utf_32_le"|"utf_16"|"utf_16_be"|"utf_16_le"|"utf_7"|"utf_8"|"utf_8_sig",
            BufferDuration = 123,
            BatchCount = 123,
            BatchSize = 123
          )
        )
      ),
      CustomInstanceProfileArn = "string",
      CustomJson = "string",
      CustomSecurityGroupIds = list(
        "string"
      ),
      Packages = list(
        "string"
      ),
      VolumeConfigurations = list(
        list(
          MountPoint = "string",
          RaidLevel = 123,
          NumberOfDisks = 123,
          Size = 123,
          VolumeType = "string",
          Iops = 123,
          Encrypted = TRUE|FALSE
        )
      ),
      EnableAutoHealing = TRUE|FALSE,
      AutoAssignElasticIps = TRUE|FALSE,
      AutoAssignPublicIps = TRUE|FALSE,
      CustomRecipes = list(
        Setup = list(
          "string"
        ),
        Configure = list(
          "string"
        ),
        Deploy = list(
          "string"
        ),
        Undeploy = list(
          "string"
        ),
        Shutdown = list(
          "string"
        )
      ),
      InstallUpdatesOnBoot = TRUE|FALSE,
      UseEbsOptimizedInstances = TRUE|FALSE,
      LifecycleEventConfiguration = list(
        Shutdown = list(
          ExecutionTimeout = 123,
          DelayUntilElbConnectionsDrained = TRUE|FALSE
        )
      )
    )
